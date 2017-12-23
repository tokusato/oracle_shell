/*
 *USAGE select 
	社員コード,
	氏名,
	GET_CNAME(管理者) as 管理者名
        from 社員マスタ
 *
*/
CREATE OR REPLACE FUNCTION GET_CNAME
(
	/* 文字列引数の定義 */
	PM_STRING IN VARCHAR2
)
/* 戻り値の定義 */
RETURN VARCHAR2

/**********************************************************/
/* 変数の定義 */
/**********************************************************/
AS
	RET_VALUE	VARCHAR2(2000);
	WK_VALUE	VARCHAR2(2000) := '初期値の設定';

/**********************************************************/
/* 処理開始 */
/**********************************************************/
BEGIN
	/* デバッグ表示 */
	DBMS_OUTPUT.PUT_LINE( 'デバッグ:開始' );
	DBMS_OUTPUT.PUT_LINE( 'デバッグ:引数:' || PM_STRING );
	DBMS_OUTPUT.PUT_LINE( WK_VALUE );

	/* 代入 */
	RET_VALUE := PM_STRING;

	IF RET_VALUE is NULL THEN 
		DBMS_OUTPUT.PUT_LINE( 'NULLデータです' );
		RET_VALUE := '該当者は存在しません';
	ELSE 
		DBMS_OUTPUT.PUT_LINE( 'データ有り' );
		SELECT 氏名 INTO WK_VALUE from 社員マスタ
			WHERE 社員コード = RET_VALUE;
		RET_VALUE := WK_VALUE;
	END IF; 

	/* 戻り値 */
	RETURN RET_VALUE;

/**********************************************************/
/* 一番外側のブロックの例外処理 */
/**********************************************************/
$if 1=1 $then
EXCEPTION
	WHEN OTHERS THEN
		WK_VALUE := '例外発生:'||SQLCODE||':'||SQLERRM;
		DBMS_OUTPUT.PUT_LINE( WK_VALUE );
		RET_VALUE := '該当データがシステムに存在しません';
		RETURN RET_VALUE;
$end
END;


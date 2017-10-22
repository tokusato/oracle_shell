##################################
## Oracleに接続するためのシェル
## user : sys as sysdba
## pass : oracle 
##################################

CLIENT=client.com;                                                    export CLIENT
MACHINE=`uname -n`;                                                   export MACHINE
DEFAULT_MAIL=me@email.com;                                            export DEFAULT_MAIL
DBA_MAIL=me@email.com,oncallguy@company.com;                          export DBA_MAIL
APP_EMAIL=me@email.com;                                               export APP_EMAIL
ALL_MAIL=$DBA_MAIL","$APP_EMAIL                                       export ALL_MAIL
ORACLE_BASE=/oracle;                                                  export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/11.2.0/db_1;                         export ORACLE_HOME
ADR_BASE=$ORACLE_BASE;                                                export ADR_BASE
NODE=mydb1;                                                           export NODE
EDITOR=vi;                                                            export EDITOR
ORACLE_TERM=vt100;                                                    export ORACLE_TERM
TERM=vt100;                                                           export TERM
DBA=/home/oracle/scripts;                                             export DBA
LOGS=/home/oracle/logs;                                               export LOGS
LDLIBPATH=/home/oracle/LDLIB
PATH=$ORACLE_HOME/bin:/grid/11.2.0/bin:$DBA:/usr/bin:/usr/sbin:/etc:/sbin:/bin
PATH=$PATH:/oracle/admin/scripts/
export PATH

# Ensure one (and only one . is in the PATH)
case "$PATH" in
        *.*)            ;;                      # If already in the path?
        *:)             PATH=${PATH}.: ;;       # If path ends in a colon?
        "")             PATH=. ;;               # If path is null?
        *)              PATH=$PATH:. ;;         # If none of the above?
esac


${LDLIBPATH}/sqlplus sys/oracle@orcl12c as sysdba
#LDLIB/sqlplus sys/oracle as sysdba


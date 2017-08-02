#!/bin/bash
if [ -f "$WORK_PATH/$MYSQL_INIT_SQL" ]; then
mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOF
use $MYSQL_DATABASE;
source $WORK_PATH/$MYSQL_INIT_SQL;
EOF
# 只执行一次
mv $WORK_PATH/$MYSQL_INIT_SQL $WORK_PATH/$MYSQL_INIT_SQL.bak
else
    echo 'no sql file exist' > /dev/null
fi
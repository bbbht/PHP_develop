#!/bin/bash
if [ -f "$WORK_PATH/$INIT_SQL" ]; then
mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOF
use $MYSQL_DATABASE;
source $WORK_PATH/$INIT_SQL;
EOF
else
    echo 'nothing exist' /tmp/init.sh.log
fi
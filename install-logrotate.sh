#!/bin/sh
FILE="/etc/logrotate.d/CHANGE_ME.conf"
DIR=$(pwd)

/bin/cat <<EOM >$FILE
$DIR/logs/symfony/prod.log {
        daily
        missingok
        rotate 14
        compress
}
$DIR/logs/symfony/dev.log {
        daily
        missingok
        rotate 14
        compress
}
$DIR/logs/nginx/error.log {
        daily
        missingok
        rotate 14
        compress
}
$DIR/logs/nginx/symfony_access.log {
        daily
        missingok
        rotate 14
        compress
}
$DIR/logs/nginx/symfony_error.log {
        daily
        missingok
        rotate 14
        compress
}
EOM


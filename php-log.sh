#!/bin/sh
# daily clean php-fpm logs
# 0 0 * * * sh /Users/saucz/Developer/.dotfiles/php-log.sh
LOGFILE=/opt/homebrew/var/log/php-fpm.log

if test -f "$LOGFILE"; then
    echo "$LOGFILE exists."
    echo "" > "$LOGFILE"
    echo "$LOGFILE contents:"
    tail "$LOGFILE"
else
    echo "$LOGFILE does not exist."
fi

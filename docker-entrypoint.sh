#!/bin/bash
set -e

if [ "$1" = 'flask' ]; then

    source /etc/apache2/envvars
    exec apache2 -D FOREGROUND
fi

exec "$@"

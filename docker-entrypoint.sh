#!/bin/sh

set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
    set -- named -g "$@"
fi

if [ "$1" = 'named' ]; then
    for f in /docker-entrypoint.d/*.sh; do
        echo "$0: running $f"
        /bin/sh "$f"
    done
fi

exec "$@"

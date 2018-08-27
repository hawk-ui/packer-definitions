#!/usr/bin/env bash
set -x

rm -rf /etc/salt/minion > /dev/null 2>&1
rm -rf /srv/salt/* > /dev/null 2>&1

exit 0

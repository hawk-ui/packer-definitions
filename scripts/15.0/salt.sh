#!/usr/bin/env bash
set -x

rpm --import http://download.opensuse.org/repositories/systemsmanagement:/saltstack:/products/openSUSE_Leap_15.0/repodata/repomd.xml.key
zypper addrepo -n 'Systemsmanagement Salt' http://download.opensuse.org/repositories/systemsmanagement:/saltstack:/products/openSUSE_Leap_15.0/ systemsmanagement-salt

zypper --non-interactive --gpg-auto-import-keys in \
  --auto-agree-with-licenses \
  salt-minion

exit 0

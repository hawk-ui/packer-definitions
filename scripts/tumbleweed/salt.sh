#!/usr/bin/env bash
set -x

rpm --import http://download.opensuse.org/repositories/systemsmanagement:/saltstack:/products/openSUSE_Tumbleweed/repodata/repomd.xml.key
zypper addrepo -n 'Systemsmanagement Salt' http://download.opensuse.org/repositories/systemsmanagement:/saltstack:/products/openSUSE_Tumbleweed/ systemsmanagement-salt

zypper --non-interactive --gpg-auto-import-keys in \
  --auto-agree-with-licenses \
  python salt salt-minion salt-master

exit 0
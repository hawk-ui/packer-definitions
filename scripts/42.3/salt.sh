#!/usr/bin/env bash
set -x

rpm --import http://download.opensuse.org/repositories/systemsmanagement:/saltstack/openSUSE_Leap_42.3/repodata/repomd.xml.key
zypper addrepo -n 'Systemsmanagement Salt' http://download.opensuse.org/repositories/systemsmanagement:/saltstack/openSUSE_Leap_42.3/ systemsmanagement-salt

zypper --non-interactive --gpg-auto-import-keys in \
  --auto-agree-with-licenses \
  python

exit 0
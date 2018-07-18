#!/usr/bin/env bash
set -x

zypper --non-interactive --gpg-auto-import-keys in \
  --auto-agree-with-licenses \
  salt salt-minion salt-master salt-ssh salt-syndic salt-cloud salt-api salt-proxy 

exit 0

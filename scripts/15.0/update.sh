#!/usr/bin/env bash
set -x

rm -f /etc/zypp/repos.d/*.repo

rpm --import http://download.opensuse.org/distribution/leap/15.0/repo/oss/repodata/repomd.xml.key
zypper addrepo -n 'openSUSE OSS' http://download.opensuse.org/distribution/leap/15.0/repo/oss/ distro-oss

rpm --import http://download.opensuse.org/update/leap/15.0/oss/repodata/repomd.xml.key
zypper addrepo -n 'openSUSE OSS Update' http://download.opensuse.org/update/leap/15.0/oss/ distro-update-oss

rpm --import http://download.opensuse.org/distribution/leap/15.0/repo/non-oss/repodata/repomd.xml.key
zypper addrepo -n 'openSUSE Non-OSS' http://download.opensuse.org/distribution/leap/15.0/repo/non-oss/ distro-non-oss

rpm --import http://download.opensuse.org/update/leap/15.0/non-oss/repodata/repomd.xml.key
zypper addrepo -n 'openSUSE Non-OSS Update' http://download.opensuse.org/update/leap/15.0/non-oss/ distro-update-non-oss

zypper --gpg-auto-import-keys --non-interactive ref
zypper --gpg-auto-import-keys --non-interactive dup

exit 0
{% set distro_repo = 'openSUSE_Leap_42.3' %}

network:ha-clustering:Factory:
  pkgrepo.managed:
    - humanname: network:ha-clustering:Factory
    - baseurl: http://download.opensuse.org/repositories/network:/ha-clustering:/Factory/{{distro_repo}}/
    - refresh: True
    - gpgautoimport: True

network:ha-clustering:BuildDep:
  pkgrepo.managed:
    - humanname: network:ha-clustering:BuildDep
    - baseurl: http://download.opensuse.org/repositories/network:/ha-clustering:/BuildDep/{{distro_repo}}/
    - refresh: True
    - gpgautoimport: True

devel:languages:ruby:extensions:
  pkgrepo.managed:
    - humanname: devel:languages:ruby:extensions
    - baseurl: http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/{{distro_repo}}/
    - refresh: True
    - gpgautoimport: True

devel:languages:ruby:
  pkgrepo.managed:
    - humanname: devel:languages:ruby
    - baseurl: https://download.opensuse.org/repositories/devel:/languages:/ruby/{{distro_repo}}/
    - refresh: True
    - gpgautoimport: True

update-oss:
  pkgrepo.managed:
    - humanname: update-oss
    - baseurl: http://download.opensuse.org/update/leap/42.3/oss/
    - refresh: True
    - gpgautoimport: True

common_packages:
  pkg.installed:
    - version: 'latest'
    - refresh: True
    - names:
        - nfs-client
        - nfs-kernel-server
        - ha-cluster-bootstrap
        - hawk2
        - hawk-apiserver
        - ocfs2-tools
        - sbd
        - resource-agents
        - fence-agents
        - apache2
        - haproxy
        - libglue-devel
        - libdlm
        - drbd-kmp-default
        - drbd
        - drbd-utils
        - ruby-devel
        - zlib-devel
        - libxslt-devel
        - nodejs6
        - ruby2.5-rubygem-rails-5_1
        - ruby2.5-rubygem-puma
        - ruby2.5-rubygem-sass-rails
        - ruby2.5-rubygem-virtus
        - ruby2.5-rubygem-js-routes
        - ruby2.5-rubygem-fast_gettext
        - ruby2.5-rubygem-gettext_i18n_rails
        - ruby2.5-rubygem-gettext_i18n_rails_js
        - ruby2.5-rubygem-sprockets
        - ruby2.5-rubygem-kramdown
        - ruby2.5-rubygem-web-console
        - ruby2.5-rubygem-spring
        - ruby2.5-rubygem-uglifier
        - ruby2.5-rubygem-gettext
        - make
        - gcc
    - require:
        - pkgrepo: network:ha-clustering:Factory
        - pkgrepo: network:ha-clustering:BuildDep
        - pkgrepo: update-oss

{% set distro_repo = 'openSUSE_Leap_42.3' %}

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

common_packages:
  pkg.installed:
    - refresh: True
    - names:
        - nfs-client
        - nfs-kernel-server
        - ha-cluster-bootstrap
        - hawk2
        - ocfs2-tools
        - sbd
        - resource-agents
        - fence-agents
        - apache2
        - haproxy
        - glib2-devel
        - libxml2-devel
        - pam-devel
        - libpacemaker-devel
        - libglue-devel
        - libdlm
        - drbd-kmp-default
        - drbd
        - drbd-utils
        - zlib-devel
        - libxslt-devel
        - nodejs4
        - ruby2.1
        - ruby2.1-devel
        - ruby2.1-rubygem-rubygems-update
        - ruby2.1-rubygem-bundler
        - ruby2.1-rubygem-rails-4_2
        - ruby2.1-rubygem-puma
        - ruby2.1-rubygem-sass-rails
        - ruby2.1-rubygem-sass
        - ruby2.1-rubygem-virtus
        - ruby2.1-rubygem-js-routes
        - ruby2.1-rubygem-fast_gettext
        - ruby2.1-rubygem-gettext_i18n_rails
        - ruby2.1-rubygem-gettext_i18n_rails_js
        - ruby2.1-rubygem-sprockets
        - ruby2.1-rubygem-kramdown
        - ruby2.1-rubygem-web-console
        - ruby2.1-rubygem-spring
        - ruby2.1-rubygem-uglifier
        - ruby2.1-rubygem-gettext
        - ruby2.1-rubygem-sexp_processor
        - ruby2.1-rubygem-tilt-1_4
        - make
        - gcc
    - require:
        - pkgrepo: network:ha-clustering:BuildDep
        - pkgrepo: devel:languages:ruby:extensions
        - pkgrepo: devel:languages:ruby

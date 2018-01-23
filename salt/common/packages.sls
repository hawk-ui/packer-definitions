{% set distro_repo = 'openSUSE_Tumbleweed' if grains['oscodename'] == 'openSUSE Tumbleweed' else 'openSUSE_Leap_42.3' %}

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

home:darix:apps:
  pkgrepo.managed:
    - humanname: home:darix:apps
    - baseurl: http://download.opensuse.org/repositories/home:/darix:/apps/{{distro_repo}}/
    - refresh: True
    - gpgautoimport: True



common_packages:
  pkg.installed:
    - names:
        - ha-cluster-bootstrap
        - fence-agents
        - apache2
        - haproxy
        - hawk-apiserver
        - libglue-devel
        - libdlm
        - drbd-kmp-default
        - drbd
        - drbd-utils
        - nodejs6
        - ruby2.4-rubygem-rails-5_1
        - ruby2.4-rubygem-puma
        - ruby2.4-rubygem-sass-rails
        - ruby2.4-rubygem-virtus
        - ruby2.4-rubygem-js-routes
        - ruby2.4-rubygem-fast_gettext
        - ruby2.4-rubygem-gettext_i18n_rails
        - ruby2.4-rubygem-gettext_i18n_rails_js
        - ruby2.4-rubygem-sprockets
        - ruby2.4-rubygem-kramdown
        - ruby2.4-rubygem-web-console
        - ruby2.4-rubygem-spring
        - ruby2.4-rubygem-uglifier
        - ruby2.4-rubygem-gettext
        - make
        - gcc
    - require:
        - pkgrepo: network:ha-clustering:Factory
        - pkgrepo: network:ha-clustering:BuildDep
        - pkgrepo: home:darix:apps

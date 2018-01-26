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


{% if distro_repo == 'openSUSE_Tumbleweed' %}

update-oss:
  pkgrepo.managed:
    - humanname: update-oss
    - baseurl: http://download.opensuse.org/repositories/openSUSE:/Factory:/Update/standard/
    - refresh: True
    - gpgautoimport: True

{% elif distro_repo == 'openSUSE_Leap_42.3' %}

update-oss:
  pkgrepo.managed:
    - humanname: update-oss
    - baseurl: http://download.opensuse.org/update/leap/42.3/oss/
    - refresh: True
    - gpgautoimport: True
  
{% endif %}

common_packages:
  pkg.installed:
    - names:
        - nfs-client
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
        - pkgrepo: update-oss

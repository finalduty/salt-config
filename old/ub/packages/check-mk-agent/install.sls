{{ sls }}:
  pkg.installed:

{%- if grains['os_family'] == 'RedHat' %}
    - name: check-mk-agent

{%- elif grains['os_family'] == 'Debian' %}
    - sources:
      - check-mk-agent: http://mirror.webhost.co.nz/check_mk/check-mk-agent_1.2.6p12-1_all.deb

{% endif %}

{%- if pillar['salt-role'] == 'slave' %}
include:
  - .install
  - .configure
  - .monitor
  - .firewall 
{% endif %}

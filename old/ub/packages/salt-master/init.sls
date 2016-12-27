{%- if pillar['salt-role'] == 'master' %}
include:
  - .install
  - .configure 
  - .monitor
  - .firewall
{% endif -%}


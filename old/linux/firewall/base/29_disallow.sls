{% set order = "29" %}
{% set comment = "Managed by Salt" %}

{{ sls }}~global_ssh:
  iptables.delete:
    - order: {{ order }}
    - chain: INPUT
    - proto: tcp
    - dport: 22
    - jump: ACCEPT

{% set order = "23" %}
{% set comment = "Managed by Salt" %}

{{ sls }}~ssh:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: INPUT
    - proto: tcp
    - src: 119.47.119.238,119.47.119.239
    - dport: 22
    - jump: ACCEPT

{{ sls }}~check_mk:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: INPUT
    - proto: tcp
    - src: 119.47.119.33,10.253.120.0/26,112.109.72.32/28,202.174.115.7/32
    - dport: 6556
    - jump: ACCEPT


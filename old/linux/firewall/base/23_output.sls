{% set order = "23" %}
{% set comment = "Managed by Salt" %}

{{ sls }}~salt:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: OUTPUT
    - proto: tcp
    - dports:
      - 4505
      - 4506
    - dst: 172.16.200.100,172.16.200.101,172.16.200.102
    - jump: ACCEPT



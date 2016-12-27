{{ sls }}:
  iptables.append:
    - order: 25
    - comment: Managed by Salt
    - chain: INPUT
    - proto: tcp
    - source: 172.16.200.101,172.16.200.102,172.16.200.104
    - dports:
      - 4505
      - 4506
    - jump: ACCEPT

{{ sls }}~foreman:
  iptables.append:
    - order: 25
    - comment: Managed by Salt
    - chain: INPUT
    - proto: tcp
    - source: 172.16.200.103
    - dports:
      - 8000
      - 8443
    - jump: ACCEPT

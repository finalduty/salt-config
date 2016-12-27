{{ sls }}~firewall:
  iptables.append:
    - order: 25
    - comment: Managed by Salt
    - chain: INPUT
    - proto: tcp
    - dports:
      - 4505
      - 4506
    - jump: ACCEPT

{{ sls }}:
  iptables.insert:
    - table: filter
    - position: 1
    - chain: INPUT
    - source: 119.47.119.33
    - dport: 6556
    - proto: tcp
    - jump: ACCEPT
    - comment: {{ sls }} 

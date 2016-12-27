{{ sls }}:
  firewall.add_rule:
    - name: test
    - localport: 8172
    - source: 172.16.200.101

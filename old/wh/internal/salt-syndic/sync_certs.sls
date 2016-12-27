{{ sls }}~master.pub:
  file.managed:
    - name: /etc/salt/pki/master/master.pub
    - source: salt://internal/salt-syndic/files/master.pub

{{ sls }}~master.pem:
  file.managed:
    - name: /etc/salt/pki/master/master.pem
    - source: salt://internal/salt-syndic/files/master.pem


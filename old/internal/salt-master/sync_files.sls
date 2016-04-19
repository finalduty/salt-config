{{ sls }}~master.pub:
  file.symlink:
    - name: /srv/salt/internal/salt-syndic/files/master.pub
    - target: /etc/salt/pki/master/master.pub

{{ sls }}~master.pem:
  file.symlink:
    - name: /srv/salt/internal/salt-syndic/files/master.pem
    - target: /etc/salt/pki/master/master.pem


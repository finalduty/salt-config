internal.salt-syndic.sync_files~top:
  file.managed:
    - name: /srv/salt/top.sls
    - source: salt://top.sls
    - makedirs: true

internal.salt-syndic.sync_files~linux:
  file.recurse:
    - name: /srv/salt/linux/
    - source: salt://linux
    - clean: true

internal.salt-syndic.sync_files~windows:
  file.recurse:
    - name: /srv/salt/windows/
    - source: salt://windows
    - clean: true

internal.salt-syndic.sync_files~customer:
  file.recurse:
    - name: /srv/salt/customer/
    - source: salt://customer
    - clean: true


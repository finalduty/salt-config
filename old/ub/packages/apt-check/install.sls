{{ sls }}:
  file.managed:
    - name: /opt/webhost/bin/apt-check
    - source: https://git.ublr.net/sysadmin/scripts/raw/master/apt-check
    - source_hash: https://git.ublr.net/sysadmin/scripts/raw/master/md5sums
    - makedirs: True
    - mode: 755


{{ sls }}:
  file.managed:
    - name: /usr/lib/check-mk-agent/local/check_apt-check.sh
    - source: https://git.ublr.net/cmk/checks/raw/master/check_apt-check.sh
    - source_hash: https://git.ublr.net/cmk/checks/raw/master/md5sums
    - mode: 755
    - makedirs: False

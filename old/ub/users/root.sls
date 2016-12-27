{{ sls }}:
  user.present:
    - name: root
    - shell: /bin/bash

{{ sls }}~bash_profile:
  file.managed:
    - name: /root/.bash_profile
    - source: https://git.ublr.net/sysadmin/configs/raw/master/.bash_profile
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums

{{ sls }}~bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: https://git.ublr.net/sysadmin/configs/raw/master/.bashrc
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums
  
{{ sls }}~vimrc:
  file.managed:
    - name: /root/.vimrc
    - source: https://git.ublr.net/sysadmin/configs/raw/master/.vimrc
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums

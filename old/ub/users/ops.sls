{% if pillar['salt-role'] == 'minion' %}

{{ sls }}:
  user.present:
    - name: ops
    - shell: /bin/bash

{{ sls }}~authorized_keys:
  file.managed:
    - name: /home/ops/.ssh/authorized_keys
    - source: https://git.ublr.net/sysadmin/configs/raw/master/authorized_keys
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums
    - makedirs: True
    - user: ops
    - group: ops
    - mode: 600

{{ sls }}~bash_profile:
  file.managed:
    - name: /home/ops/.bash_profile
    - source: https://git.ublr.net/sysadmin/configs/raw/master/.bash_profile
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums
  
{{ sls }}~bashrc:
  file.managed:
    - name: /home/ops/.bashrc
    - source: https://git.ublr.net/sysadmin/configs/raw/master/.bashrc
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums
 
{{ sls }}~vimrc:
  file.managed:
    - name: /home/ops/.vimrc
    - source: https://git.ublr.net/sysadmin/configs/raw/master/.vimrc
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums

{{ sls }}~sudoers:
  file.managed:
    - name: /etc/sudoers.d/ops
    - contents: |
        Defaults:ops  log_year, logfile=/var/log/sudo.log
        ops ALL=(ALL) NOPASSWD: ALL

{% else %}
{{ sls }}:  
  user.absent:
    - name: ops
  file.absent:
    - name: /home/ops

{% endif %}

{{ sls }}:
  user.present:
    - name: andy
    - shell: /bin/bash

{{ sls }}~authorized_keys:
  file.managed:
    - name: /home/andy/.ssh/authorized_keys
    - source: https://raw.githubusercontent.com/finalduty/configs/master/authorized_keys
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums
    - makedirs: True
    - user: andy
    - group: andy
    - mode: 600

{{ sls }}~bashrc:
  file.managed:
    - name: /home/andy/.bashrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.bashrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

{{ sls }}~vimrc:
  file.managed:
    - name: /home/andy/.vim/vimrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.vimrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

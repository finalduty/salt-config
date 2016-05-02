{{ sls }}:
  user.present:
    - name: andy
    - shell: /bin/bash

{{ sls }}~sudoers:
  file.managed:
    - name: /etc/sudoers.d/andy
    - contents: | 
        andy ALL=(ALL) NOPASSWD: ALL
    - user: root
    - group: root
    - mode: 600
        
{{ sls }}~aliases:
  file.managed:
    - name: /home/andy/.aliases
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.aliases
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~authorized_keys:
  file.managed:
    - name: /home/andy/.ssh/authorized_keys
    - makedirs: true
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
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~mksums.sh:
  file.managed:
    - name: /home/andy/bin/mksums.sh
    - makedirs: true
    - source: https://raw.githubusercontent.com/finalduty/configs/master/mksums.sh
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums
    - user: andy
    - group: andy
    - mode: 750

{{ sls }}~toprc:
  file.managed:
    - name: /home/andy/.toprc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.toprc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~vimrc:
  file.managed:
    - name: /home/andy/.vim/vimrc
    - makedirs: true
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.vimrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums
    - user: andy
    - group: andy
    - mode: 640

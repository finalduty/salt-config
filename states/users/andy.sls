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
    - source: salt://configs/.aliases
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~authorized_keys:
  file.managed:
    - name: /home/andy/.ssh/authorized_keys
    - makedirs: true
    - source: salt://configs/authorized_keys
    - makedirs: True
    - user: andy
    - group: andy
    - mode: 600

{{ sls }}~bashrc:
  file.managed:
    - name: /home/andy/.bashrc
    - source: salt://configs/.bashrc
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~gitconfig:
  file.managed:
    - name: /home/andy/.gitconfig
    - source: salt://configs/.gitconfig
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~toprc:
  file.managed:
    - name: /home/andy/.toprc
    - source: salt://configs/.toprc
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}~vimrc:
  file.managed:
    - name: /home/andy/.vim/vimrc
    - makedirs: true
    - source: salt://configs/.vimrc
    - user: andy
    - group: andy
    - mode: 640

{{ sls }}:
  user.present:
    - name: root
    - shell: /bin/bash

{{ sls }}~authorized_keys:
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://linux/files/authorized_keys
    - makedirs: True
    - user: root
    - group: root
    - mode: 600

{{ sls }}~bash_profile:
  file.managed:
    - name: /root/.bash_profile
    - source: salt://linux/files/.bash_profile
  
{{ sls }}~bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.bashrc
    - source_hash: md5=124d37a784562f388a9b13bb70f06a1c
  
{{ sls }}~vimrc:
  file.managed:
    - name: /root/.vimrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.vimrc
    - source_hash: md5=d7e5dc6a9fa14d7c58a87d0dbb423183

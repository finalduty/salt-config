{{ sls }}~aliases:
  file.managed:
    - name: /root/.aliases
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.aliases
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

{{ sls }}~bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.bashrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

{{ sls }}~vimrc:
  file.managed:
    - name: /root/.vim/vimrc
    - makedirs: true
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.vimrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

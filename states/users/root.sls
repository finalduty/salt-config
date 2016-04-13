{{ sls }}~bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.bashrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

{{ sls }}~vimrc:
  file.managed:
    - name: /root/.vimrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.vimrc
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

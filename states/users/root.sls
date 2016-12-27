{{ sls }}~aliases:
  file.managed:
    - name: /root/.aliases
    - source: salt://configs/.aliases

{{ sls }}~bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: salt://configs/.bashrc

{{ sls }}~toprc:
  file.managed:
    - name: /root/.toprc
    - source: salt://configs/.toprc

{{ sls }}~vimrc:
  file.managed:
    - name: /root/.vim/vimrc
    - makedirs: true
    - source: salt://configs/.vimrc

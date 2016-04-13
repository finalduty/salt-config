bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: https://raw.githubusercontent.com/finalduty/configs/master/.bashrc
    - source_hash: sha1=b61564b6f238192022db4674a86fd6cf16577130


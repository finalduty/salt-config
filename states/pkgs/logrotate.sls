{{ sls }}:
  - pkg.installed:
  	- name: logrotate

{{ sls }}~config:
  - file.managed:
  	- name: /etc/logrotate.conf
  	- mode: 644
  	- source: https://raw.githubusercontent.com/finalduty/configs/master/logrotate.conf
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

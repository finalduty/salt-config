{{ sls }}:
  pkg.installed:
    - name: logrotate

{{ sls }}~config:
  file.managed:
    - name: /etc/logrotate.conf
    - mode: 644
    - source: salt://configs/logrotate.conf

{{ sls }}:
  pkg.installed:
    - name: rsyslog
 
{{ sls }}~service:
  service.running:
    - name: rsyslog
    - enable: True
    - watch: 
      - pkg: rsyslog
      - file: /etc/rsyslog.conf

{{ sls }}~config:
  file.managed:
    - name: /etc/rsyslog.conf
    - source: https://raw.githubusercontent.com/finalduty/configs/master/rsyslog.conf
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums
    - user: andy
    - group: andy
    - mode: 640

#{{ sls }}~disable-journald:
#  service.dead:
#    - name: systemd-journald
#    - enable: false


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
    - source: salt://configs/rsyslog.conf
    - user: root
    - group: root
    - mode: 640

#{{ sls }}~disable-journald:
#  service.dead:
#    - name: systemd-journald
#    - enable: false


{{ sls }}:
  pkg.installed:
    - name: salt-zmq

{{ sls }}~minion:
  service.running:
    - name: salt-minion
    - enable: True
    - reload: True
    - watch:
      - pkg: salt-zmq

{{ sls }}~cron:
  file.managed:
    - name: /etc/cron.d/salt-call.cron
    - source: https://raw.githubusercontent.com/finalduty/configs/master/salt-call.cron
    - source_hash: https://raw.githubusercontent.com/finalduty/configs/master/md5sums

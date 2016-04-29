{{ sls }}:
  pkg.installed:
    - name: salt-zmq

{{ sls }}~minion:
  service.running:
    - name: salt-minion
    - enabled: True
    - reload: True
    - watch:
      - pkg: salt-zmq

{{ sls }}~cron:
  file.managed:
    - file: /etc/cron.d/salt-update.cron
    - contents:
      - */15 * * * * root salt-call --master=salt.finalduty.me state.highstate &>/dev/null

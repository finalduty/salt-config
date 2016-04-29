{{ sls }}:
  pkg.installed:
    - name salt-zmq

{{ sls }}~minion:
  service.running:
    - name: salt-minion
    - enabled: True
    - reload: True
    - watch:
      - pkg: salt-zmq
      - file: /etc/salt/minion



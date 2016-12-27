{{ sls }}:
  file.managed:
    - name: /usr/lib/systemd/system/check_mk_agent@.service
    - source: salt://{{ slspath }}/files/check_mk@.service
    - user: root
    - group: root
    - mode: 644

{{ sls }}~socket:
  file.managed:
    - name: /usr/lib/systemd/system/check_mk_agent.socket
    - source: salt://{{ slspath }}/files/check_mk.socket
    - user: root
    - group: root
    - mode: 644

  service.running:
    - name: check_mk_agent.socket
    - state: running
    - enable: true
    - watch:
      - file: /usr/lib/systemd/system/check_mk_agent@.service
      - file: /usr/lib/systemd/system/check_mk_agent.socket


{{ sls }}~etc:
  file.directory:
    - name: /etc/check-mk-agent
    - mode: 755

{{ sls }}~usr_lib:
  file.directory:
    - name: /usr/lib/check_mk_agent/
    - mode: 755

{{ sls }}~local:
  file.directory:
    - name: /usr/lib/check_mk_agent/local
    - mode: 755

{{ sls }}~plugins:
  file.directory:
    - name: /usr/lib/check_mk_agent/plugins
    - mode: 755

{{ sls }}~var_lib:
  file.directory:
    - name: /var/lib/check_mk_agent
    - mode: 755

{{ sls }}~spool:
  file.directory:
    - name: /var/lib/check_mk_agent/spool
    - mode: 755

{{ sls }}~cache:
  file.directory:
    - name: /var/lib/check_mk_agent/cache
    - mode: 755


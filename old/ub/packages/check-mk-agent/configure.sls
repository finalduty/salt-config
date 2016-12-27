{{ sls }}:
  file.managed:
    - name: /etc/xinetd.d/check-mk-agent
    - user: root
    - group: root
    - mode: 644
    - replace: False

  service.running:
    - name: xinetd
    - state: running
    - watch:
      - file: /etc/xinetd.d/check-mk-agent

{{ sls }}~env:
  file.line:
    - name: /usr/bin/check_mk_agent
    - content: export MK_LIBDIR="/usr/lib/check_mk_agent"
    - match: export MK_LIBDIR
    - mode: replace

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


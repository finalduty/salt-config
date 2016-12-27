{{ sls }}:
  file.managed:
    - name: /usr/bin/check_mk_agent
    - source: salt://{{ slspath }}/files/check_mk_agent.linux
    - user: root
    - group: root
    - mode: 750

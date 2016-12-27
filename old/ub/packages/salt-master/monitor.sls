{{ sls }}:
  file.managed:
    - name: /usr/lib/check_mk_agent/local/check_salt-master.sh
    - source: salt://{{ slspath }}/files/check_salt-master.sh
    - user: root
    - group: root
    - mode: 750

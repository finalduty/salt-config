{%- if pillar['salt-role'] == 'slave' %}
{{ sls }}:
  file.managed:
    - name: /etc/sysconfig/firewall
    - source: salt://{{ slspath }}/files/firewall.template
    - template: jinja
    - user: root
    - group: salt
    - mode: 750
  cmd.run:
    - name: /etc/sysconfig/firewall
    - onchanges:
      - file: /etc/sysconfig/firewall

{% endif %}  

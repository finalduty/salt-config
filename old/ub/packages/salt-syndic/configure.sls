{%- if pillar['salt-role'] == 'slave' %}
{{ sls }}:
  file.managed:
    - name: /etc/salt/master
    - source: salt://{{ slspath }}/files/syndic.template
    - template: jinja
    - group: salt
    - mode: 640

{{ sls }}~autoreject:
  file.managed:
    - name: /etc/salt/master.d/auto_reject
    - source: salt://{{ slspath }}/files/auto_reject
    - group: salt
    - mode: 640

{% endif %}

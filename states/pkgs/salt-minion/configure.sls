{{ sls }}:
  file.managed:
    - name: /etc/salt/minion
    - source: salt://{{ slspath }}/files/minion.template
    - template: jinja
    - makedirs: True
    - user: root
    - group: root
    - mode: 640

{% if pillar['salt-role'] == 'minion' %}
{{ sls }}~master_key:
  file.managed:
    - name: /etc/salt/pki/minion/minion_master.pub
    - source: salt://{{ slspath }}/files/slave.pub
    - makedirs: True
    - user: root
    - group: root
    - mode: 640

{% elif pillar['salt-role'] == 'master' or pillar['salt-role'] == 'slave' %}
{{ sls }}~master_key:
  file.managed:
    - name: /etc/salt/pki/minion/minion_master.pub
    - source: salt://{{ slspath }}/files/master.pub
    - makedirs: True
    - user: root
    - group: root
    - mode: 640
{% endif %}

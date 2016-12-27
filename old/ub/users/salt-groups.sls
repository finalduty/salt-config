{% if pillar['salt-role'] == 'slave' %}
{{ sls }}~users:
  user.present:
    - name: salt
    - createhome: false
    - shell: /sbin/nologin
  file.managed:
    - name: /etc/sudoers.d/salt
    - source: salt://{{ slspath }}/files/salt.sudo
    - user: root
    - group: root
    - mode: 400
{% endif %}

{% if pillar['salt-role'] != 'minion' %}
{{ sls }}~admins:
  group.present:
    - name: salt-admins
  file.managed:
    - name: /etc/sudoers.d/salt-admins
    - source: salt://{{ slspath }}/files/salt-admins.sudo
    - user: root
    - group: root
    - mode: 400
{% endif %}

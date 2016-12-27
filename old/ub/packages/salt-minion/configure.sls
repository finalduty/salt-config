{{ sls }}:
  user.present:
    - name: salt
    - order: 1
    - createhome: false
    - system: true
    - shell: /sbin/nologin
    - password: $1$EvBN.G4H$ETfZas8YhoJ6uS8i3iTFR0
  file.managed:
    - name: /etc/salt/minion
    - source: salt://{{ slspath }}/files/minion.template
    - template: jinja
    - makedirs: True
    - user: root
    - group: salt
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

{{ sls }}~cron:
  file.managed:
    - name: /etc/cron.d/salt-call.cron
    - source: salt://{{ slspath }}/files/salt-call.cron
    - user: root
    - group: salt
    - mode: 644

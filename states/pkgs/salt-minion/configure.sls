{{ sls }}:
  file.managed:
    - name: /etc/salt/minion
    - source: salt://{{ slspath }}/files/minion.template
    - template: jinja
    - makedirs: True
    - user: root
    - group: salt
    - mode: 640

{{ sls }}~master_cert:
  file.managed:
    - name: /etc/salt/pki/minion/minion_master.pub
    - source: salt://{{ slspath }}/files/master.pub
    - makedirs: True
    - user: root
    - group: root
    - mode: 640

{{ sls }}~cron:
  file.managed:
    - name: /etc/cron.d/salt-call.cron
    - source: salt://{{ slspath }}/files/salt-call.cron
    - user: root
    - group: salt
    - mode: 644

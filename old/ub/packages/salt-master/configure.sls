{%- if pillar['salt-role'] == 'master' %}
{{ sls }}:
  file.managed:
    - name: /etc/salt/master
    - source: salt://{{ slspath }}/files/master.template
    - template: jinja
    - user: root
    - group: salt
    - mode: 640

{{ sls }}~ssl-cert:
  file.managed:
    - name: /etc/pki/tls/certs/ublr.net.crt
    - source: salt://{{ slspath }}/files/ublr.net.crt
    - user: root
    - group: root
    - mode: 644

{{ sls }}~api-user:
  user.present:
    - name: api-user
    - system: true
    - shell: /sbin/nologin
    - password: $1$aq/dDvmx$936MfrPAeLXOYLJNTt0Qm.

{% endif %}

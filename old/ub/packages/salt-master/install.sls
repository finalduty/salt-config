{%- if pillar['salt-role'] == 'master' %}
{{ sls }}:
  pkg.installed:
    - pkgs:
      - salt-master
      - python-pygit2
      - git
  service.running:
    - name: salt-master
    - enable: true
    - watch:
      - file: /etc/salt/master

{{ sls }}~api: 
  pkg.installed:
    - name: salt-api
  service.running:
    - name: salt-api
    - enable: true
    - watch:
      - file: /etc/salt/master

{% endif %}

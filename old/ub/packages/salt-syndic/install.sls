{%- if pillar['salt-role'] == 'slave' %}
{{ sls }}:
  pkg.installed:
    - pkgs:
      - salt-master
      - salt-syndic

{{ sls }}~salt-master:
  service.running:
    - name: salt-master
    - enable: true
    - watch:
      - file: /etc/salt/master

{{ sls }}~salt-syndic:
  service.running:
    - name: salt-syndic
    - enable: true
    - watch: 
      - file: /etc/salt/master

{{ sls }}~gluster:
  pkg.installed:
    - name: glusterfs-server
#  service.running:
#    - name: glusterd
#    - enable: True

{% endif %}

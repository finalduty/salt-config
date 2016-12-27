{% if pillar['salt-role'] == 'slave' %}
{{ sls }}:
  file.managed:
    - name: /etc/yum.repos.d/glusterfs.repo
    - source: salt://{{ slspath }}/files/glusterfs.repo

{% endif %}

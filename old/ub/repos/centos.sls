{%- if grains['os'] == 'CentOS' %}
{{ sls }}:
  file.managed:
    - name: /etc/yum.repos.d/CentOS-Base.repo
    - source: salt://{{ slspath }}/files/CentOS-Base.repo
    - template: jinja

{% endif %}

{% if pillar['salt-role'] == 'slave' %}
{{ sls }}~glusterfs:
  file.managed:
    - name: /etc/yum.repos.d/glusterfs.repo
    - source: salt://{{ slspath }}/files/glusterfs.repo

{% endif %}

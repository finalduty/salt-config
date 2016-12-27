{%- if grains['os_family'] == 'RedHat' %}
{{ sls }}:
  file.managed:
    - name: /etc/yum.repos.d/epel.repo
    - source: salt://{{ slspath }}/files/epel.repo
    - template: jinja

{% endif %}                    

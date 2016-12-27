{{ sls }}:

{%- if grains['os_family'] == 'RedHat' %}
  {%- if grains['osfinger'] == 'CentOS-6' %}   {% set rpmsource = 'https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el6.noarch.rpm' %}
  {%- elif grains['osfinger'] == 'CloudLinux Server-6' %}   {% set rpmsource = 'https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el6.noarch.rpm' %}
  {%- elif grains['osfinger'] == 'CentOS Linux-7' %} {% set rpmsource = 'https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el7.noarch.rpm' %}
  {% endif %}

  pkg.installed:
    - sources:
      - salt-repo: {{ rpmsource }}

{%- elif grains['os_family'] == 'Debian' %}
  {%- if grains['osfinger'] == 'Debian-7' %}   {% set content = 'deb http://repo.saltstack.com/apt/debian/7/amd64/latest wheezy main' %}
  {%- elif grains['osfinger'] == 'Debian-8' %} {% set content = 'deb http://repo.saltstack.com/apt/debian/8/amd64/latest jessie main' %}
  {%- elif grains['osfinger'] == 'Ubuntu-14.04' %}  {% set content = 'deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main' %}
  {%- elif grains['osfinger'] == 'Ubuntu-16.04' %}  {% set content = 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main' %}
  {% endif %}


  pkgrepo.managed:
    - humanname: Saltstack Repo
    - name: {{ content }} 
    - file: /etc/apt/sources.list.d/saltstack.list
    - keyid: 0E08A149DE57BFBE
    - keyserver: keyserver.ubuntu.com

{%- endif %}

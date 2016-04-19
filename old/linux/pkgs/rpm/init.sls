include:
  - .common
{% if grains['os'] == 'CentOS' %}
  - .centos
  {% if grains['osmajorrelease'] == '6' %}
  - .centos6
  {% elif grains['osmajorrelease'] == '7' %}
  - .centos7
  {% endif %}
{% endif %}

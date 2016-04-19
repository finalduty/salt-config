include:
  - .common
  - .salt-minion

{% if grains['os_family'] == 'Debian' %}
  - .deb
{% elif grains ['os_family'] == 'RedHat' %}
  - .rpm
{% endif %}

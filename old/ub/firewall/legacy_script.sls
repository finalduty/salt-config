{{ sls }}:
  file.managed:
{% if grains['os_family'] == 'Debian' %}
    - name: /etc/network/firewall.example
{% elif grains['os_family'] == 'RedHat' %}
    - name: /etc/sysconfig/firewall.example
{% endif %}
    - source: https://git.ublr.net/sysadmin/configs/raw/master/firewall
    - source_hash: https://git.ublr.net/sysadmin/configs/raw/master/md5sums
    - mode: 750


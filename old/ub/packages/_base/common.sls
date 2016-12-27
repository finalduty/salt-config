{{ sls }}:
  pkg.installed:
    - pkgs:
      - bash-completion
      - curl
      - git
      - htop
      - iftop
      - mtr
      - nano
      - nmap
      - open-vm-tools
      - psmisc
      - quota
      - rsync
      - rsyslog
      - screen
      - strace
      - tcpdump
      - tmux
      - wget

{%- if grains['os_family'] == 'Debian' %}
      - locate
      - netcat
      - tcpflow
      - vim
      - lsb-release

{%- elif grains['os_family'] == 'RedHat' %}
      - mlocate
      - redhat-lsb-core
      - vim-enhanced
      - yum-cron
      - yum-utils

  {% if grains['osfinger'] == 'CentOS-6' or grains['osfinger'] == 'CloudLinux Server-6' %}
      - nc

  {% elif grains['osfinger'] == 'CentOS Linux-7' %}
      - nmap-ncat

  {% endif %}

{%- endif -%}

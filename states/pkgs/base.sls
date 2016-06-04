{{ sls }}:
  pkg.installed:
    - pkgs:
      - bash-completion
      - dnsutils
      - rsync
      - screen
      - sudo
      - vim
      - vnstat



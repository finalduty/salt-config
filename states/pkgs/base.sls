{{ sls }}:
  pkg.installed:
    - pkgs:
      - bash-completion
      - bind-tools
      - rsync
      - screen
      - sudo
      - vim
      - vnstat



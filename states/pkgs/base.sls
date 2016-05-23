{{ sls }}:
  pkg.installed:
    - pkgs:
      - bash-completion
      - rsync
      - sudo
      - vim



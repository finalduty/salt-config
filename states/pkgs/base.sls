{{ sls }}:
  pkg.installed:
    - pkgs:
      - vim
      - sudo
      - bash-completion



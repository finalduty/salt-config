{{ sls }}:
  pkg.installed:
    - pkgs:
      - bash-completion
      - cronie
      - sudo
      - vim



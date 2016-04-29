{{ sls }}:
  pkg.installed:
    - pkgs:
      - bash-completion
      - sudo
      - vim



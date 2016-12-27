{{ sls }}:
  pkg.installed:
    - pkgs:
      - curl
      - wget
      - bash-completion
      - sudo
      - screen
      - open-vm-tools
      - nano

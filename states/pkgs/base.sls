{{ sls }}:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - salt-zmq
      - sudo
      - bash-completion



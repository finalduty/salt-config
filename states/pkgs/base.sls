{{ sls }}:
  pkg.installed:
    - pkgs:
      - vim
      - salt-zmq
      - sudo
      - bash-completion



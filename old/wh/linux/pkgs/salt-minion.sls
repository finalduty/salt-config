{{ sls }}:
  pkg.installed:
    - pkgs:
      -  salt-minion
  service.running:
    - name: salt-minion
    - enable: true

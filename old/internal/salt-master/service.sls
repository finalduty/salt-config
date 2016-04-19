{{ sls }}:
  pkg.installed:
    - pkgs:
      - salt-master
  service.running:
    - name: salt-master
    - enable: true


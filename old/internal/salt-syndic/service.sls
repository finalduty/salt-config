{{ sls }}:
  pkg.latest:
    - pkgs:
      - salt-master
      - salt-syndic
  service.running:
    - names: 
      - salt-master
      - salt-syndic
    - enable: true

{{ sls }}:
  pkg.installed:
    - pkgs:
      - xinetd

  service.running:
    - name: xinetd
    - enable: true

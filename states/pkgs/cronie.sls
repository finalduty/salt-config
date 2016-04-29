{{ sls }}:
  pkg.installed:
    - name: cronie

{{ sls }}~service:
  service.running:
    - name: cronie
    - enable: True
    - reload: True
    - watch:
      - pkg: cronie


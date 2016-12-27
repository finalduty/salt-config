{{ sls }}:
  pkg.installed:
    - name: salt
  
  service.running:
    - name: salt-minion
    - enable: true
    - watch:
      - file: /etc/salt/minion

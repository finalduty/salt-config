{{ sls }}~download:
  win_update.downloaded

{{ sls }}~install:
  win_update.installed

{{ sls }}~reboot:
  cmd.wait:
    - name: shutdown -r -t0
    - watch: 
      - win_update: {{ sls }}~install


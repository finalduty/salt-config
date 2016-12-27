## Currently there is no way in a state to start a service in a state
## Run `salt -G 'kernel:windows' service.start LanmanServer` instead

{{ sls }}~server:
  service.enabled:
    - name: LanmanServer


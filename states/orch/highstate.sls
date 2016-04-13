{{ sls }}:
  salt.state:
    - tgt: 'web'
    - highstate: True

{{ sls }}:
  salt.state:
    - tgt: '*'
    - highstate: True

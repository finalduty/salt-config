base:
  'kernel:linux':
    - match: grain
    - linux
  'kernel:windows': 
    - match: grain 
    - windows

  'andy-test-slt-s-*': 
    - internal.salt-syndic
  'andy-test-slt-m-*': 
    - internal.salt-master

spin_up:
  salt.runner:
    - name: cloud.profile
    - prof: aws-rhel
    - instances: {{ pillar['web-instances-count']}}
    
    
    salt.runners.cloud
    
    
% set cloud_instances = salt['cloud.query']() %}
log_ids:
  file.managed:
  - name: /tmp/cloud_ids.txt
  - contents: |
    instances:
    {%- for id in cloud_instances['aws']['ec2'] %}
      - {{id}}
    {%- endfor %}
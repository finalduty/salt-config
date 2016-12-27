{{ sls }}:
  file.managed:
    - name: /etc/cron.daily/apt-check.cron
    - source: salt://{{ slspath }}/files/apt-check.cron

{{ sls }}~asset:
  file.managed:
    - name: /opt/webhost/asset
    - contents: {{ grains['id'] }}
    - mode: 444

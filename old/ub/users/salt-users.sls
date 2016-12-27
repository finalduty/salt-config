{% if pillar['salt-role'] != 'minion' %}

  {% for user in pillar['salt-users'] %}
    {% set status = pillar['salt-users'][user]['status'] %}
    {% set ssh_key = pillar['salt-users'][user]['ssh_key'] %}
    {% set fullname = pillar['salt-users'][user]['fullname'] %}

    {% if status == 'active' %}
    {{ sls }}~{{ user }}:
      user.present:
        - name: {{ user }}
        - fullname: {{ fullname }}
        - shell: /bin/bash
        - password: $1$plLqupGt$YC0.JVzDAuR9D1ypNnP8Z0
        - groups: 
          - salt
          {% if pillar['salt-users'][user]['role'] == 'admin' %}
          - salt-admins
          {%- endif %}

      file.managed:
        - name: /home/{{ user }}/.ssh/authorized_keys
        - contents: {{ ssh_key }}
        - makedirs: true
        - user: root
        - group: {{ user }}
        - mode: 640

    {% elif status == 'disabled' %}
    {{ sls }}~{{ user }}:
      user.present:
        - name: {{ user }}
        - shell: /sbin/nologin
        - groups:
      file.managed:
        - name: /home/{{ user }}/.ssh/authorized_keys
        - contents: {{ ssh_key }}
        - makedirs: true
        - user: root
        - group: {{ user }}
        - mode: 640
  
    {% elif status == 'deleted' %}
    {{ sls }}~{{ user }}:
      user.absent:
        - name: {{ user }}
      file.absent:
        - name: /home/{{ user }}

    {% endif %}
  {% endfor %}
{% endif %}

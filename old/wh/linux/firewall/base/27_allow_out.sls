{% set order = '27' %}
{% set comment = 'Managed by Salt' %}

{{ sls }}~allow:
  iptables.append:
    - order: {{ order }}
    - comment: {{ comment }}
    - chain: OUTPUT
    - jump: ACCEPT

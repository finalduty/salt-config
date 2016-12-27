{% set order = "20" %}
{% set comment = "Managed by Salt" %}

{{ sls }}~INPUT:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: INPUT
    - in-interface: lo
    - jump: ACCEPT
               
{{ sls }}~OUTPUT:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: OUTPUT
    - out-interface: lo
    - jump: ACCEPT

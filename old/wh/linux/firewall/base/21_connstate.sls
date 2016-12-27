{% set order = "21" %}
{% set comment = "Managed by Salt" %}

{{ sls }}~input_invalid:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: INPUT
    - connstate: INVALID
    - jump: REJECT

{{ sls }}~input_established:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: INPUT
    - connstate: ESTABLISHED
    - jump: ACCEPT

{{ sls }}~output_established:
  iptables.append:
    - order: {{ order }}
    - comment: Managed by Salt
    - chain: OUTPUT
    - connstate: RELATED,ESTABLISHED
    - jump: ACCEPT

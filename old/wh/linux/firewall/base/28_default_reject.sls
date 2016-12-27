{% set order = "28" %}
{% set comment = "Managed by Salt" %}

{% set families = ['ipv4','ipv6'] %}
{% set chains = ['INPUT','FORWARD','OUTPUT'] %}

{% for family in families %}
  {% for chain in chains %}
    {{ sls }}~{{family}}~{{ chain }}:
      iptables.append:
        - order: {{ order }}
        - comment: Managed by Salt
        - family: {{ family }}
        - chain: {{ chain }}
        - jump: REJECT

  {% endfor %}
{% endfor %}

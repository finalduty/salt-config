{% set order = '22' %}
{% set comment = 'Managed by Salt' %}

{% set chains = ['INPUT','OUTPUT'] %}
{% set icmp_types = ['echo-reply','echo-request','destination-unreachable','time-exceeded'] %}

{% for chain in chains %}
  {{ sls }}~{{ chain }}_fragment:
    iptables.append:
      - order: {{ order }}
      - comment: {{ comment }}
      - chain: {{ chain }}
      - proto: icmp
      ## The following line is written like this as the --fragment option in iptables does not take arguments
      ## This allows for the construction of the command to be done correctly by salt.
      - fragment: --jump REJECT

{% for icmp_type in icmp_types %}
  {{ sls }}~{{ chain }}_{{ icmp_type }}:
    iptables.append:
      - order: {{ order }}
      - comment: {{ comment }}
      - chain: {{ chain }}
      - proto: icmp
      - icmp-type: {{ icmp_type }}
      - jump: ACCEPT
{% endfor %}

  {{ sls }}~{{ chain }}_reject:
    iptables.append:
      - order: {{ order }}
      - comment: {{ comment }}
      - chain: {{ chain }}
      - proto: icmp
      - jump: REJECT

{% endfor %}

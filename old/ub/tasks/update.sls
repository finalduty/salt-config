{% if pillar['patching'] == True %}
{{ sls }}:
  pkg.uptodate:
    - refresh: true

{% endif %}

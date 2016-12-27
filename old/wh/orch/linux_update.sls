## Orchestration state to update all linux machines
## To Run: `salt-run state.orchestrate orch.linux_update`

{{ sls }}:
  salt.state:
    - tgt: 'os:linux'
    - tgt_type: grain
    - sls:
      - linux.update

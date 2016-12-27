{{ sls }}:
  pkg.installed:
    - pkgs:
      - redhat-lsb-core
      - yum-cron
      - psmisc
      - epel-release

{{sls}}~remove:
  pkg.purged:
    - pkgs:
      - redhat-lsb

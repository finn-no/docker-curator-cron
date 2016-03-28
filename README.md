# docker-curator-cron

## parameters
* CRON
  What schedule to run on
  Default: "0 1 * * *"

* ES_HOST
  Which host to connect to
  Default: "elasticsearch"

* KEEP_DAYS
  How many days of indices to keep
  Default: "7"

* COMMAND
  The curator command to run
  Default: "delete indices --older-than ${KEEP_DAYS} --time-unit days --timestring '%Y.%m.%d'"

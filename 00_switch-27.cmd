cd /D "%~dp0"

call 00-a-set-variables.cmd
set CLUSTER_NAME=ihc-fhechler-1-27
call 00-b-config-kubectl.cmd

cd /D "%~dp0"

call 00-a-set-variables.cmd

set CLUSTER_NAME=ihc-sbraun
set REGION=europe-west1
set ZONE=europe-west1-b

call 00-b-config-kubectl.cmd

#set CLUSTER_NAME=ihc-fhechler-1-27
set CLUSTER_NAME=ihc-fhechler-1-25

set PROJECT_ID=tmforum-oda-component-cluster
set REGION=europe-west1
set ZONE=europe-west1-b

REM proxy for internet
set HTTP_PROXY=http://sia-lb.telekom.de:8080
set HTTPS_PROXY=http://sia-lb.telekom.de:8080
set NO_PROXY=10.0.0.0/8,.eks.amazonaws.com,.telekom.de

set PROJECT_ID=tmforum-oda-component-cluster

#set CLUSTER_NAME=ihc-fhechler-1-25
#set REGION=europe-west1
#set ZONE=europe-west1-b

#set CLUSTER_NAME=ihc-fhechler-1-27
#set REGION=europe-central2
#set ZONE=europe-central2-a

set CLUSTER_NAME=ihc-thomo
set REGION=europe-west4
set ZONE=europe-west4-b

REM proxy for internet
set HTTP_PROXY=http://sia-lb.telekom.de:8080
set HTTPS_PROXY=http://sia-lb.telekom.de:8080
set NO_PROXY=10.0.0.0/8,.eks.amazonaws.com,.telekom.de

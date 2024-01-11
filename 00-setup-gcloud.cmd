cd /D "%~dp0"

set CLUSTER_NAME=cluster-1

set PROJECT_ID=tmforum-oda-component-cluster
set REGION=europe-west4
set ZONE=europe-west4-a

REM proxy for internet
set HTTP_PROXY=http://sia-lb.telekom.de:8080
set HTTPS_PROXY=http://sia-lb.telekom.de:8080
set NO_PROXY=10.0.0.0/8,.eks.amazonaws.com,.telekom.de


cmd /c gcloud auth login

cmd /c gcloud config set project %PROJECT_ID%
cmd /c gcloud config set compute/region %REGION%
cmd /c gcloud config set compute/zone %ZONE%

cmd /c gcloud container clusters get-credentials %CLUSTER_NAME% 

kubectl get ns %CLUSTER_NAME%
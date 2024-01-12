cmd /c gcloud config set project %PROJECT_ID%
cmd /c gcloud config set compute/region %REGION%
cmd /c gcloud config set compute/zone %ZONE%

cmd /c gcloud container clusters get-credentials %CLUSTER_NAME% 

kubectl get ns %CLUSTER_NAME%
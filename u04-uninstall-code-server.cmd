cd /D "%~dp0"


helm uninstall code-server -n code-server || true  

kubectl delete clusterrolebinding --ignore-not-found code-server-cluster-admin-rb 
kubectl delete secret --ignore-not-found -n code-server code-server-secret 


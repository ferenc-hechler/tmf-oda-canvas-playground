cd /D "%~dp0"

helm uninstall canvas -n canvas || true  

kubectl delete pvc -n canvas data-canvas-postgresql-0  || true  
kubectl get lease -n kube-system
kubectl delete lease cert-manager-cainjector-leader-election -n kube-system  || true  
kubectl delete lease cert-manager-controller -n kube-system  || true  

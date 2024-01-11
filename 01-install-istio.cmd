cd /D "%~dp0"

kubectl auth can-i create namespaces --all-namespaces
kubectl auth can-i create customresourcedefinitions --all-namespaces
kubectl auth can-i create clusterroles --all-namespaces
kubectl auth can-i create clusterrolebindings --all-namespaces
kubectl auth can-i create mutatingwebhookconfigurations --all-namespaces
kubectl auth can-i create validatingwebhookconfigurations --all-namespaces
kubectl auth can-i create clusterissuers  --all-namespaces
kubectl auth can-i create serviceaccounts
kubectl auth can-i create secrets
kubectl auth can-i create configmaps
kubectl auth can-i create roles
kubectl auth can-i create rolebindings
kubectl auth can-i create services
kubectl auth can-i create deployments
kubectl auth can-i create statefulsets
kubectl auth can-i create gateways
kubectl auth can-i create jobs
kubectl auth can-i create certificates
kubectl auth can-i create issuers


helm repo add jetstack https://charts.jetstack.io
helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo update

kubectl create namespace istio-system --dry-run=client -oyaml | kubectl apply -f -

helm upgrade --install istio-base istio/base -n istio-system
helm upgrade --install istiod istio/istiod -n istio-system --wait

kubectl create namespace istio-ingress --dry-run=client -oyaml | kubectl apply -f -
kubectl label namespace istio-ingress istio-injection=enabled

helm upgrade --install istio-ingress istio/gateway -n istio-ingress --set labels.app=istio-ingress --set labels.istio=ingressgateway --wait

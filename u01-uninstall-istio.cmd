cd /D "%~dp0"

helm uninstall -n istio-ingress istio-ingress || true  
helm uninstall -n istio-system istiod || true
helm uninstall -n istio-system istio-base || true  

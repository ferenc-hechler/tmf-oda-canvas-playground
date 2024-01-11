cd /D "%~dp0"

helm uninstall prodcat -n components || true  

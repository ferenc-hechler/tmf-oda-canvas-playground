cd /D "%~dp0"

cd oda-canvas

cd installation/cert-manager-init
helm dependency update
cd ../canvas-oda
helm dependency update
helm upgrade --install canvas -n canvas --create-namespace --set keycloak.service.type=ClusterIP .
cd ../..

cd ..

REM check installed canvas versions
kubectl get crd components.oda.tmforum.org -o jsonpath='{.spec.versions[?(@.served==true)].name}'
@echo " "



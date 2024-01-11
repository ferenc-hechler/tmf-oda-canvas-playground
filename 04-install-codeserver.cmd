cd /D "%~dp0"

REM set CODE_SERVER_PASSWORD=
echo PASSWORD for login: "%CODE_SERVER_PASSWORD%"

kubectl create namespace code-server --dry-run=client -oyaml | kubectl apply -f -

kubectl create secret generic -n code-server code-server-secret --from-literal=password="%CODE_SERVER_PASSWORD%" --dry-run=client -oyaml | kubectl apply -f - 

REM git clone https://github.com/coder/code-server
cd code-server
helm upgrade --install -n code-server --create-namespace code-server --set existingSecret=code-server-secret ci/helm-chart --set image.repository=mtr.devops.telekom.de/magenta_canvas/public/baseimages --set image.tag=code-server-mc-additions --set imagePullSecrets[0].name=magenta-canvas-deployer-pull-secret
cd ..

kubectl create clusterrolebinding code-server-cluster-admin-rb --clusterrole=cluster-admin --serviceaccount=code-server:code-server --dry-run=client -oyaml | kubectl apply -f -

echo . create a tunnel
echo . 
echo . kubectl port-forward -n code-server svc/code-server 8080:8080
echo .
echo . open in browser http://localhost:8080
# directly after setting up the cluster

```
kubectl get nodes
	NAME                                          STATUS   ROLES    AGE     VERSION
	gke-ihc-fhechler-default-pool-0ff0fe18-1n9j   Ready    <none>   4m46s   v1.25.16-gke.1041000

C:\Users\a307131\git\gcp-oda-canvas>kubectl get ns
	NAME              STATUS   AGE
	default           Active   3m54s
	ihc-fhechler      Active   32s
	kube-node-lease   Active   3m57s
	kube-public       Active   3m57s
	kube-system       Active   3m57s

kubectl get pods -A
	NAMESPACE     NAME                                                     READY   STATUS    RESTARTS   AGE
	kube-system   event-exporter-gke-6f9ffb57cc-79tl7                      2/2     Running   0          3m7s
	kube-system   fluentbit-gke-f2m8x                                      2/2     Running   0          2m9s
	kube-system   gke-metrics-agent-gk4b5                                  2/2     Running   0          2m9s
	kube-system   konnectivity-agent-76759875b6-hlqhz                      1/1     Running   0          2m58s
	kube-system   konnectivity-agent-autoscaler-7dc78c8c9-l5jpd            1/1     Running   0          2m56s
	kube-system   kube-dns-6f9957df5-7shtr                                 4/4     Running   0          3m13s
	kube-system   kube-dns-autoscaler-5f56f8997c-rrrx7                     1/1     Running   0          3m13s
	kube-system   kube-proxy-gke-ihc-fhechler-default-pool-0ff0fe18-1n9j   1/1     Running   0          55s
	kube-system   l7-default-backend-69f77f79cb-sx4g7                      1/1     Running   0          2m54s
	kube-system   metrics-server-v0.5.2-7cf895db8-68bxm                    2/2     Running   0          87s
	kube-system   pdcsi-node-zdqwp                                         2/2     Running   0          2m9s

kubectl get lease -A
	NAMESPACE         NAME                                          HOLDER                                                                       AGE
	kube-node-lease   gke-ihc-fhechler-default-pool-0ff0fe18-1n9j   gke-ihc-fhechler-default-pool-0ff0fe18-1n9j                                  2m25s
	kube-system       addon-manager                                 gke-73139aa39f504256840a-c599-0c02-vm_b9a48f97-3230-46c3-b0a0-56468b943492   3m40s
	kube-system       cloud-controller-manager                      gke-73139aa39f504256840a-c599-0c02-vm_c1e661ac-9e32-4c40-a45c-166d855e68c6   3m18s
	kube-system       cloud-provider-extraction-migration-pt1       gke-73139aa39f504256840a-c599-0c02-vm_c1e661ac-9e32-4c40-a45c-166d855e68c6   3m18s
	kube-system       cloud-provider-extraction-migration-pt2       gke-73139aa39f504256840a-c599-0c02-vm_96ee0f6f-e2eb-4add-87cf-43b83aee0391   3m41s
	kube-system       cluster-autoscaler                            gke-73139aa39f504256840a-c599-0c02-vm                                        3m31s
	kube-system       gcp-controller-manager                        gke-73139aa39f504256840a-c599-0c02-vm                                        3m26s
	kube-system       gke-common-webhook-lock                       gke-73139aa39f504256840a-c599-0c02-vm_25778                                  3m26s
	kube-system       ingress-gce-lock                              gke-73139aa39f504256840a-c599-0c02-vm_5985f                                  2m48s
	kube-system       kube-controller-manager                       gke-73139aa39f504256840a-c599-0c02-vm_96ee0f6f-e2eb-4add-87cf-43b83aee0391   3m41s
	kube-system       kube-scheduler                                gke-73139aa39f504256840a-c599-0c02-vm_90d169f0-70de-487f-a246-50f58734159b   4m6s
	kube-system       managed-certificate-controller                gke-73139aa39f504256840a-c599-0c02-vm                                        3m15s
	kube-system       snapshot-controller-leader                    gke-73139aa39f504256840a-c599-0c02-vm                                        3m4s
	kube-system       vpa-recommender                               gke-73139aa39f504256840a-c599-0c02-vm                                        2m45s

```
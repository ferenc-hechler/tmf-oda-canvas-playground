# GCP ODA Canvas

## git submodule

clone oda-canvas into subfolder oda-canvas:

```
git submodule add https://github.com/tmforum-oda/oda-canvas.git
```

## Setup gcloud

### set internet proxy (if neccessary)

```
set HTTP_PROXY=http://sia-lb.telekom.de:8080
set HTTPS_PROXY=http://sia-lb.telekom.de:8080
set NO_PROXY=10.0.0.0/8,.eks.amazonaws.com,.telekom.de

#gcloud config set proxy/type http
#gcloud config set proxy/address 1.234.56.78
#gcloud config set proxy/port 8080

```

### login to gcloud

```
gcloud auth login
```

### set default values

```
set PROJECT_ID=tmforum-oda-component-cluster
set REGION=europe-west4
set ZONE=europe-west4-a
gcloud config set project %PROJECT_ID%
gcloud config set compute/region %REGION%
gcloud config set compute/zone %ZONE%
```

### connect kubectl to cluster

```
set CLUSTER_NAME=cluster-1
gcloud container clusters get-credentials %CLUSTER_NAME% 
```

# follow the installation instructions

As described in [issue-21](https://github.com/tmforum-oda/oda-canvas/issues/121) we follow the installation instructions here:
https://github.com/tmforum-oda/oda-canvas/tree/master/installation 



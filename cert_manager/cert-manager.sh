# to create a namespace for certificate manager
kubectl create namespace cert-manager
# adding the helm chart to our repository
helm repo add jetstack https://charts.jetstack.io
helm repo update
#Installing the cert-manager
helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v0.16.1 -f ./values.yaml  --set installCRDs=true


echo Installing helm
./get_helm.sh --version v3.2.4

cd ..;

#To configure docker hub password to pull images from private repo
echo creating docker hub credentials as secret
kubectl apply -f ./docker-secret.yaml
kubectl apply -f ./docker-secret-ml.yaml -n ml-scale

echo creating app details as secret
kubectl apply -f ./app-secret.yaml

# to create storage class
echo Creating storageclass for PVCs
kubectl apply -f ./storage_class/ 

 # To create neo4j node
#helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml
echo Installing Neo4j
kubectl create namespace nginx-ingress
helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml --namespace nginx-ingress

# To install monitoring service
echo Installing monitoring services
helm repo add prometheus-community    https://prometheus-community.github.io/helm-charts
kubectl create namespace monitoring
helm install --namespace monitoring kops-cluster-monitoring prometheus-community/kube-prometheus-stack  -f ./kube-prometheus-stack/values.yaml --version 13.10.0



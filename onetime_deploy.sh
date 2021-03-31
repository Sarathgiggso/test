echo Installing helm
./get_helm.sh --version v3.2.4

#To configure docker hub password to pull images from private repo
echo creating docker hub credentials as secret
kubectl apply -f ./docker-secret.yaml

# to create storage class
echo Creating storageclass for PVCs
kubectl apply -f ./storage_class/ 

# to create NFS Provisioner for wildfly
echo Creating nfs provisioner for web storage
helm upgrade -i nfs-giggso nfs-server -f ./nfs-server/values.yaml

# to create mariadb cluster
echo Installing mariadb cluster

helm upgrade -i giggso-mariadb mariadb-cluster -f ./mariadb-cluster/values-production.yaml
#(cd ./docker-mariadb;

#docker-compose up -d)

# to create elasticsearch cluster
echo Installing Elastic cluster ET:5-10mins
 # To create data node group
helm upgrade -i es-giggsodata elasticsearch -f ./elasticsearch/giggsodata.yml
sleep 2m
 # To create ingest nodegroup
helm upgrade -i es-ingest elasticsearch -f ./elasticsearch/ingest.yml
# To create master nodegroup
helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml
 # To create client nodegroup
helm upgrade -i es-client elasticsearch -f ./elasticsearch/client.yml

 # To create neo4j node
#helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml
echo Installing Neo4j
kubectl create namespace nginx-ingress
helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml --namespace nginx-ingress

# To install monitoring service
echo Installing monitoring services
helm repo add prometheus-community    https://prometheus-community.github.io/helm-charts
kubectl create namespace monitoring
helm upgrade -i --namespace monitoring kops-cluster-monitoring prometheus-community/kube-prometheus-stack  -f ./kube-prometheus-stack/values.yaml

sleep 5m
echo Installing Giggso core services 
# to deploy php service
kubectl apply -f ./php/

# to deploy kibana service
kubectl apply -f ./kibana/

# to deploy pulsar service
kubectl apply -f ./pulsar/

# to deploy keycloak service
kubectl apply -f ./keycloak/

# to deploy wildfly service
kubectl apply -f ./web/

#to deploy angular
kubectl apply -f ./angular/

# to deploy Audit Trail service
kubectl apply -f ./audit_trail/

#to deploy kafka
kubectl apply -f ./kafka/

#to deploy trino
kubectl apply -f ./trino/

#to deploy AIML services
echo "deploying AIML services"
kubectl apply -f ./bert-encoder/
kubectl apply -f ./capacity-prediction/roles-rbac/
kubectl apply -f ./capacity-prediction/jobchecker/
kubectl apply -f ./capacity-prediction/jobcreationapi/
kubectl apply -f ./capacity-prediction/capacity-report/
kubectl apply -f ./correlated-events/
kubectl apply -f ./gg-recommendations/
kubectl apply -f ./giggso-aiml-logparser/
kubectl apply -f ./giggso-aiml-rca/
kubectl apply -f ./giggso-aiml-sme/
kubectl apply -f ./log-ingestion/
kubectl apply -f ./loganomaly/roles-rbac/
kubectl apply -f ./loganomaly/jobchecker/
kubectl apply -f ./loganomaly/jobcreationapi/

#To install certificate manager
(cd ./cert_manager; ./cert-manager.sh)

echo Deploying nginx ingress controller
# to install nginx ingress controller
(cd ./ingress;
./ingress-daemonset.sh)

# to deploy logstash service
#kubectl create configmap logstash-pipeline --from-file=./logstash/logstash.conf --namespace=nginx-ingress
#kubectl apply -f ./logstash/

# to deploy ruleengine service
kubectl apply -f ./ruleengine/

# to deploy ask-giggso service
kubectl apply -f ./ask-giggso/

sleep 2m 

kubectl apply -f ./cert_manager/helm/cert-manager/tls-ss.yaml
kubectl apply -f ./ingress/ingress-gateway.yaml

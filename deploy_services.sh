

# to create mariadb cluster
#helm upgrade -i giggso-mariadb mariadb-cluster -f ./mariadb-cluster/values-production.yaml
(cd ./docker-mariadb;

docker-compose up -d)

# to create elasticsearch cluster
 # To create data node
helm upgrade -i es-data elasticsearch -f ./elasticsearch/data.yml
 # To create data node
sleep 2m
helm upgrade -i es-ingest elasticsearch -f ./elasticsearch/ingest.yml
 # To create data node
helm upgrade -i es-client elasticsearch -f ./elasticsearch/client.yml
  # To create master node
helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml

 # To create neo4j node
#helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml
helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml --namespace nginx-ingress

sleep 2m
# to deploy php service
kubectl apply -f ./php/

# to deploy kibana service
kubectl apply -f ./kibana/

# to deploy pulsar service
kubectl apply -f ./pulsar/

# to deploy keycloak service
kubectl apply -f ./keycloak/

# to deploy wildfly service
kubectl apply -f ./web/web-deployment.yaml

#to deploy angular
kubectl apply -f ./angular/

# to deploy Audit Trail service
kubectl apply -f ./audit_trail/


# to install nginx ingress controller
(cd ./ingress;
./ingress-daemonset.sh)

# to deploy logstash service
#kubectl create configmap logstash-pipeline --from-file=./logstash/logstash.conf --namespace=nginx-ingress
#kubectl apply -f ./logstash/

# to deploy ruleengine service
#kubectl apply -f ./ruleengine/

# to deploy log-ingestion service
kubectl apply -f ./log-ingestion/

# to deploy loganomaly service
kubectl apply -f ./loganomaly/

# to deploy ask-giggso service
kubectl apply -f ./ask-giggso/

sleep 2m 

#kubectl apply -f ./cert_manager/helm/cert-manager/tls-ss.yaml
#kubectl apply -f ./ingress/ingress-gateway.yaml

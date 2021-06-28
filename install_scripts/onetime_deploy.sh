
echo Installing helm
./get_helm.sh --version v3.2.4

cd ..;

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
# To create master nodegroup
helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml
#kubectl apply -f elasticsearch/rollover-deployment.yaml
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

sleep 5m

#to deploy kafka
helm upgrade -i zookeeper-cluster zookeeper -f ./zookeeper/values.yaml 
helm upgrade -i kafka-cluster kafka -f ./kafka/values.yaml 

#to deploy ksqldb
helm upgrade -i gg-ksqldb ksqldb -f ./ksqldb/values.yaml
kubectl apply -f ksql-client/ksql-cli.yaml

#to deploy trino
kubectl apply -f ./trino/


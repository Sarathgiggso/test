

cd ..;

helm delete nfs-giggso 

# to create mariadb cluster
echo Installing mariadb cluster

helm delete giggso-mariadb 
#(cd ./docker-mariadb;

#docker-compose up -d)

# to create elasticsearch cluster
echo Installing Elastic cluster ET:5-10mins
 # To create data node group
helm delete es-giggsodata 
# To create master nodegroup
helm delete es-master 
 # To create neo4j node
#helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml

kubectl delete namespace nginx-ingress
helm delete neo4j

# To install monitoring service
echo Installing monitoring services
helm repo add prometheus-community    https://prometheus-community.github.io/helm-charts
kubectl delete namespace monitoring
helm delete kops-cluster-monitoring 


#to deploy kafka
helm delete zookeeper-cluster  
helm delete kafka-cluster  


#to deploy trino
kubectl delete -f ./trino/


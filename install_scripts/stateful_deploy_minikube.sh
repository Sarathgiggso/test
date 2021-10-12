
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

#to deploy kafka
helm upgrade -i zookeeper-cluster zookeeper -f ./zookeeper/values.yaml 
helm upgrade -i kafka-cluster kafka -f ./kafka/values.yaml 

#to deploy ksqldb
helm upgrade -i gg-ksqldb ksqldb -f ./ksqldb/values.yaml
kubectl apply -f ksql-client/ksql-cli.yaml

#to deploy trino
kubectl apply -f ./trino/

# to deploy kibana service
kubectl apply -f ./kibana/

# to deploy ruleengine service
kubectl apply -f ./ruleengine/

#to deploy java microservices
kubectl apply -f ./error-detection/
kubectl apply -f ./ESLoad/
kubectl apply -f ./EnrichData/
kubectl apply -f ./webpush/
kubectl apply -f ./NoncoreLogAggregator/


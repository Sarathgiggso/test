# to delete mariadb cluster
#helm delete giggso-mariadb
(cd ./docker-mariadb;

docker-compose down)

# to delete elasticsearch cluster
  # To delete master node
helm delete es-master 
 # To delete data node
helm delete es-data 
  # To delete master node
helm delete es-ingest
 # To delete data node
helm delete es-client

#to delete neo4j
helm delete neo4j -n nginx-ingress

#helm delete es-data-new
#To delete certificate manager
#./cert-manager/cert-manager.sh

# to deploy ask-giggso service
kubectl delete -f ./ask-giggso/


# to undeploy php service
kubectl delete -f ./php/

# to undeploy kibana service
kubectl delete -f ./kibana/

# to undeploy pulsar service
kubectl delete -f ./pulsar/

# to undeploy keycloak service
kubectl delete -f ./keycloak/

# to undeploy logstash service
#kubectl delete configmap logstash-pipeline --namespace=nginx-ingress
#kubectl delete -f ./logstash/

# to undeploy wildfly service
kubectl delete -f ./web/web-deployment.yaml


# to undeploy log anomaly service
kubectl delete -f ./loganomaly/

# to undeploy log ingestion service
kubectl delete -f ./log-ingestion/

# to undeploy angular service
#kubectl delete configmap env-config 
kubectl delete -f ./angular/

#To undeploy audit trail service
kubectl delete -f ./audit_trail/

# to undeploy rule engine service
kubectl delete -f ./ruleengine/

# to undeploy capacity-prediction service
#kubectl delete -f ./capacity-prediction/
# to delete nginx ingress controller
cd ingress/

./ingress-deletion.sh

# to delete NFS Provisioner for wildfly
#Ehelm delete nfs-giggso nfs-server -f ./nfs-server/values.yaml 

# to delete storage class
#kubectl delete -f ./storage_class/storage_class.yml


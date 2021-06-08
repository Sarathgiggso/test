cd ../
# to delete mariadb cluster
helm delete giggso-mariadb
#(cd ./docker-mariadb;

#docker-compose down)
helm delete kafka-cluster
helm delete zookeeper-cluster
# to delete elasticsearch cluster
  # To delete master node
helm delete es-master 
 # To delete data node
helm delete es-giggsodata 
  # To delete master node

#to delete neo4j
helm delete neo4j -n nginx-ingress
helm delete kops-cluster-monitoring -n monitoring
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

# to undeploy angular service
#kubectl delete configmap env-config 
kubectl delete -f ./angular/

#To undeploy audit trail service
kubectl delete -f ./audit_trail/

# to undeploy rule engine service
kubectl delete -f ./ruleengine/

#to deploy trino
kubectl delete -f ./trino/

#to deploy AIML services
kubectl delete -f ./bert-encoder/
kubectl delete -f ./capacity-prediction/roles-rbac/
kubectl delete -f ./capacity-prediction/jobchecker/
kubectl delete -f ./capacity-prediction/jobcreationapi/
kubectl delete -f ./capacity-prediction/capacity-report/
kubectl delete -f ./correlated-events/
kubectl delete -f ./gg-recommendations/
kubectl delete -f ./giggso-aiml-logparser/
kubectl delete -f ./giggso-aiml-rca/
kubectl delete -f ./giggso-aiml-sme/
kubectl delete -f ./log-ingestion/
kubectl delete -f ./loganomaly/roles-rbac/
kubectl delete -f ./loganomaly/jobchecker/
kubectl delete -f ./loganomaly/jobcreationapi/

# to delete nginx ingress controller
cd ingress/

./ingress-deletion.sh

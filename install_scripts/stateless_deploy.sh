cd ../

kubectl create namespace ml-scale

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
kubectl apply -f ./giggso-webhook-consumer/

#to deploy angular
kubectl apply -f ./angular/

# to deploy Audit Trail service
kubectl apply -f ./audit_trail/

#to deploy java microservices
kubectl apply -f ./error-detection/
kubectl apply -f ./ESLoad/
kubectl apply -f ./EnrichData/
kubectl apply -f ./AzUpload/
kubectl apply -f ./webpush/
kubectl apply -f ./NoncoreLogAggregator/

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
kubectl apply -f ./anomalydetector/roles-rbac -n ml-scale
kubectl apply -f ./anomalydetector/inference/ -n ml-scale
kubectl apply -f ./anomalydetector/ml-service-api/ -n ml-scale
kubectl apply -f ./anomalydetector/scaler_and_job_allocator/ -n ml-scale
kubectl apply -f ./anomalydetector/scheduler/ -n ml-scale

#To install certificate manager
(cd ./cert_manager; ./cert-manager.sh)

echo Deploying nginx ingress controller
# to install nginx ingress controller
(cd ./ingress;
./ingress-daemonset.sh)

# to deploy logstash service
#kubectl create configmap logstash-pipeline --from-file=./logstash/logstash.conf --namespace=nginx-ingress
#kubectl apply -f ./logstash/
kubectl apply -f elasticsearch/rollover-deployment.yaml
# to deploy ruleengine service
kubectl apply -f ./ruleengine/

# to deploy ask-giggso service
kubectl apply -f ./ask-giggso/

sleep 2m

kubectl apply -f ./cert_manager/helm/cert-manager/tls-ss.yaml
kubectl apply -f ./ingress/ingress-gateway.yaml

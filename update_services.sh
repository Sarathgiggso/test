#To apply secret to access docker private repo
kubectl apply -f ./docker-secret.yaml

#to upgrade nginx-ingress
kubectl delete -f ./ingress/kubernetes-ingress/deployments/common/default-server-secret.yaml
kubectl apply -f ./ingress/kubernetes-ingress/deployments/common/default-server-secret.yaml
kubectl apply -f ./ingress/kubernetes-ingress/deployments/daemon-set/nginx-ingress.yaml

  # To update elastic helm master node
helm delete es-master
helm delete es-data
helm delete giggso

sleep 2m
# to deploy mariadb
helm upgrade -i giggso mariadb-cluster -f ./mariadb-cluster/values-production.yaml

helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml
 # To create data node
helm upgrade -i es-data elasticsearch -f ./elasticsearch/data.yml


sleep 5m
# to deploy php service
kubectl apply -f ./php/php-deployment.yaml

# to deploy kibana service
kubectl apply -f ./kibana/kibana-deployment.yaml

# to deploy pulsar service
kubectl apply -f ./pulsar/pulsar-deployment.yaml

# to deploy keycloak service
kubectl apply -f ./keycloak/keycloak-deployment.yaml

# to deploy wildfly service
kubectl delete -f ./web/jboss_external_config_configmap.yaml
kubectl apply -f ./web/jboss_external_config_configmap.yaml
kubectl apply -f ./web/web-deployment.yaml

#to deploy angular service
kubectl delete configmap env-config
kubectl apply -f ./angular/env-configmap.yaml
kubectl apply -f ./angular/deployment.yaml

# to deploy Audit Trail service
kubectl apply -f ./audit_trail/audit-deployment.yaml

# to deploy logstash service
kubectl apply -f ./logstash/logstash-deployment.yaml

# to deploy ruleengine service
kubectl apply -f ./ruleengine/ruleengine-deployment.yaml


#to update new domain

kubectl delete -f ./cert_manager/helm/cert-manager/tls-ss.yaml
kubectl apply -f ./cert_manager/helm/cert-manager/tls-ss.yaml

sleep 1m

kubectl apply -f ./ingress/ingress-gateway.yaml

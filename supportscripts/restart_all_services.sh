# to create mariadb cluster
helm upgrade giggso-mariadb mariadb-cluster -f ./mariadb-cluster/values-production.yaml --recreate-pods

# to create elasticsearch cluster
  # To create master node
helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml --recreate-pods
 # To create data node
helm upgrade -i es-giggsodata elasticsearch -f ./elasticsearch/giggsodata.yml --recreate-pods

#to restart neo4j
helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml --namespace nginx-ingress --recreate-pods
# to install nginx ingress controller
#./ingress/ingress-daemonset.sh

# to restart ask-giggso service
kubectl rollout restart deploy ask-giggso

# to restart php service
kubectl rollout restart deploy php

# to restart kibana service
kubectl rollout restart deploy kibana

# to restart keycloak service
kubectl rollout restart deploy keycloak

# to restart logstash service
kubectl rollout restart deploy logstash -n nginx-ingress

# to restart wildfly service
kubectl rollout restart deploy web

# to restart rule engine service
kubectl rollout restart deploy giggso-ruleengine

# to restart log ingestion service
kubectl rollout restart deploy giggso-logingestion

# to restart angular service
kubectl rollout restart deploy angular

# to restart Audit Trail service
kubectl rollout restart deploy logstash-at

#to restart job api
kuebctl rollout restart deploy jobapi

#to restart job checker
kuebctl rollout restart deploy jobchecker

#to restart all java microservices
kubectl rollout restart deploy giggso-enrichdata giggso-esload giggso-azupload giggso-webpush giggso-nclogaggregator



# Overview of deployment

In deployment we had 7 plus services and listed  below
1. Mariadb
2. Elasticsearch
3. Keycloak
4. Angualar (Also include node js services inside the container for realtime)
5. php
6. pulsar
7. logstash
8. kibana
9. cert manager
10. wildfly
11. nginx-ingress


# Helm chart code base services
1. Mariadb
2. Elasticsearch
3. cert manager

# How to deploy the services
Pre-requisite:
1. install helm <br>
```hcl
  ./get_helm.sh
```
Run the below script to start the deployment <br>
```hcl
  ./deploy_services.sh
``` 

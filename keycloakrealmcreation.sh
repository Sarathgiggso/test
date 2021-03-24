#!/bin/bash
var=$(kubectl get pods | grep "keycloak")
set -- $var

kubectl exec -it $1  -- bash -c "/opt/jboss/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user admin --password Pa55w0rd"
kubectl exec -it $1 -- bash -c "/opt/jboss/keycloak/bin/kcadm.sh create realms -f /opt/jboss/giggsorealm.json"
echo $1

kubectl exec -i $1  -- bash -c "/opt/jboss/keycloak/bin/kcadm.sh update realms/giggso -f - << EOF
{ \"realm\": \"giggso\", \"enabled\": true, \"defaultRoles\" : [ \"offline_access\", \"uma_authorization\", \"gguser\" ] }
EOF"

sudo touch keycloakkeys.json

sudo chmod 777 keycloakkeys.json

kubectl exec -it $1  -- bash -c "/opt/jboss/keycloak/bin/kcadm.sh get keys -r giggso" > keycloakkeys.json



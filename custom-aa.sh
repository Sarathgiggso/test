#!/bin/bash

set -x
set -e

sed -i 's/angular-k8-uat/angular-k8-uat-aa/g' angular/deployment.yaml
sed -i "s/window.__env.CLIENT_NAME = '';/window.__env.CLIENT_NAME = 'Project Diamond';/g" angular/env-configmap.yaml
sed -i 's/giggso-keycloak/giggso-keycloak-aa/g' keycloak/keycloak-deployment.yaml
kubectl apply -f angular/env-configmap.yaml
kubectl apply -f angular/deployment.yaml
kubectl apply -f keycloak/keycloak-deployment.yaml

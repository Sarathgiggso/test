#!/bin/bash

sudo apt install jq -y
sudo ./keycloakrealmcreation.sh

keycloakkey=$(cat keycloakkeys.json |jq -r '.keys' | jq -r ".[] | .publicKey"|grep -v null)

sudo python keycloak.py $keycloakkey
kubectl apply -f ./web/keycloak_json_configmap.yaml

kubectl rollout restart deploy web

sudo ./web_image_copy.sh


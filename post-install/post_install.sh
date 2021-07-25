#!/bin/bash

sudo apt install jq -y
sudo ./keycloakrealmcreation.sh

keycloakkey=$(cat keycloakkeys.json |jq -r '.keys' | jq -r ".[] | .publicKey"|grep -v null)

sudo python keycloak.py $keycloakkey
kubectl apply -f ../web/keycloak_json_configmap.yaml

sudo ./web_image_copy.sh

kubectl rollout restart deploy web


echo "creating schemas through trino"
(cd ../trino;
./run_schema.sh)


#!/bin/bash
#Run the elastic dump scripts and alter scripts using curl commands
sudo apt-get update
sudo apt install docker.io
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
cd ../elasticdump_script
./run_impt_analyzer.sh
./run_impt_data.sh

curl -X PUT "$6:30920/%3Cgglogs_%7Bnow%2Fd%7D-1%3E" -H 'Content-Type: application/json' -d'
{
  "aliases": {
    "gglogs": {}
  }
}'
#deploying rollover
kubectl apply -f ../elasticsearch/es-rollover-cfg.yaml
kubectl apply -f ../elasticsearch/rollover-deployment.yaml

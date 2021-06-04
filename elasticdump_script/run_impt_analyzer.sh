#!/bin/bash
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
path= pwd
./import_analyzer.sh http://elastic:changeme@$6:30920 $path/dump/analyzer


#./import_analyzer.sh http://elastic:changeme@$1:9200 /home/ubuntu/ggazure-int/giggso_service_deployment/giggso-kubernetes-manifest/elasticdump_script/dump/analyzer

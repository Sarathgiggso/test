#!/bin/bash
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
path= pwd
./export_analyzer.sh http://elastic:changeme@$6:30920 /home/ubuntu/ggservices-deployment/elasticdump_script/export/dump/analyzer


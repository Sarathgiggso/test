#!/bin/bash
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
path= pwd
./export_data.sh http://elastic:changeme@$6:30920 /home/ubuntu/ggservices-deployment/elasticdump_script/export/dump/data


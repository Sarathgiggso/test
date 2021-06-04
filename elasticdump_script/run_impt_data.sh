#!/bin/bash
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
path= pwd
./import_data.sh http://elastic:changeme@$6:30920 /home/ubuntu/ggservices-deployment/elasticdump_script/dump/data

#./import_data.sh  http://elastic:changeme@$1:9200  /home/ubuntu/dump_data_temp/

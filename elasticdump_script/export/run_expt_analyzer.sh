#!/bin/bash
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
path= pwd
./export_analyzer.sh http://elastic:changeme@$6:30920 $path/dump/analyzer
#./export_analyzer.sh http://elastic:changeme@10.4.0.6:30920 /home/ubuntu/es_dump_june04/elasticdump_script/export/dump/analyzer


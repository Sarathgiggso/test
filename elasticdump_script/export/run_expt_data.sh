#!/bin/bash
var=$(kubectl get nodes -o wide  | grep "elastic")
set -- $var
path= pwd
./export_data.sh http://elastic:changeme@$6:30920 $path/dump/data

#./export_data.sh http://elastic:changeme@10.4.0.6:30920 /home/gguser/giggsocontainer/data/elasticdump_script/export/dump_extmetadata_temp

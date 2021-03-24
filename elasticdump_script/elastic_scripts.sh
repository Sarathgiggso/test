#!/bin/bash
var=$(kubectl get svc | grep "elasticsearch")
set -- $var
echo $3
sudo ./run_impt_analyzer.sh $3

sleep 5m

#sudo ./run_impt_data.sh $3



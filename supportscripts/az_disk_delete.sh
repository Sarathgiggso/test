#!/bin/bash
kubectl get pv | grep Released | awk '{print $1}' > pvc_list
echo "This script will find the released PVs from cluster and delete the respective disks from portal"
echo "Please exit if you dont want to lose the disks with data"
echo "Enter the resourcegroup name of the cluster"
read res_grp

input="./pvc_list"
while IFS= read -r line
do
  az disk delete --name kubernetes-dynamic-$line --resource-group $res_grp --yes
  echo "$line deleted"
done < "$input"


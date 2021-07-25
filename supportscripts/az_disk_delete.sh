#!/bin/bash
#This script will pull the IDs of PVs which are in released state and delete them from the azure portal
#this needs az login to be done on the VM for succesful execution 
#Also It needs Resource group as input 
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


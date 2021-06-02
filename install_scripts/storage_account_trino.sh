#!/bin/bash  
  
# Read the user input   
echo "Please make sure az login done in this server"

echo "Enter the storage account  name(no special acharacters allowed): "  
read storage_name
echo "Enter the resource group name:"
read res_group
echo "Is this existing storage account(type yes/no): "  
read flag  

if [[ $flag == "yes" ]]; then
     az storage account create --name $storage_name --resource-group $res_group --kind StorageV2
     echo " storageaccount $storage_name created"
fi
echo "container creating"
az storage container create -n gglogspt  --account-name $storage_name
echo "container for trino created"
echo "receiving access keys"
secret=$(az storage account keys list -g $res_group -n $storage_name | grep -o '"value": "[^"]*' | grep -m 1 -o '[^"]*$')
echo "$secret"
echo "secrets retrieved. Please keep a note of them for deploying in cluster"
echo "Creating kubernetes secret"
kubectl create secret generic azure-blob-access --from-literal=storage-account='$storage_name' --from-literal=access-key='$secret'

./trino_storage_info.sh $storage_name $secret

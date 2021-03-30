az storage account create --name $2 --resource-group $1 --kind StorageV2
az storage container create -n $3 --account-name $2
az storage account keys list -g $1 -n $2 | grep -o '"value": "[^"]*' | grep -m 1 -o '[^"]*$'


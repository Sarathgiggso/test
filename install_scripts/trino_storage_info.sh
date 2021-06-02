sed -i 's/storageaccountname/$1/g' ../trino/metastore-cfg.yaml
sed -i 's/storageaccesskey/$2/g' ../trino/metastore-cfg.yaml
sed -i 's/storageaccountname/$1/g' ../trino/trino-cfgs.yaml
sed -i 's/storageaccesskey/$2/g' ../trino/trino-cfgs.yaml
sed -i 's/storageaccountname/$1/g' ../AzUpload/azupload-config.yaml
sed -i 's/storageaccesskey/$2/g' ../AzUpload/azupload-config.yaml
sed -i 's/storageaccountname/$1/g' ../trino/schema_creation.sh
sed -i 's/storageaccesskey/$2/g' ../trino/schema_creation.sh

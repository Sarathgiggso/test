cd ../
helm upgrade -i gg-ksqldb ksqldb -f ./ksqldb/values.yaml --recreate-pods

helm upgrade -i es-giggsodata elasticsearch -f ./elasticsearch/giggsodata.yml --recreate-pods
sleep 3m
helm upgrade -i es-client elasticsearch -f ./elasticsearch/client.yml --recreate-pods
helm upgrade -i es-ingest elasticsearch -f ./elasticsearch/ingest.yml --recreate-pods
helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml --recreate-pods


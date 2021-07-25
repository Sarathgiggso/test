#this script will restart the`elastic pods running.

cd ../
helm upgrade -i es-giggsodata elasticsearch -f ./elasticsearch/giggsodata.yml --recreate-pods
sleep 3m
helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml --recreate-pods


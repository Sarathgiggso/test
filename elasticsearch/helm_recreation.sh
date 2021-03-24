helm delete es-giggsodata
sleep 3m
(cd ..;
helm upgrade -i es-giggsodata elasticsearch -f ./elasticsearch/giggsodata.yml)

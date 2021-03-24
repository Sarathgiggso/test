index_file=".env"
while read line; do
        echo "Processing index:${1}/${line}"       
	sudo docker run --network host -v "${2}":/home --rm -t  taskrabbit/elasticsearch-dump \
	  --input="${1}/${line}" \
	  --output "/home/${line}_analyzer.json" \
	  --type=analyzer \
	  --concurrency 2000
	sudo docker run --network host -v "${2}":/home --rm -t  taskrabbit/elasticsearch-dump \
	  --input="${1}/${line}" \
  	  --output="/home/${line}_mapping.json" \
  	  --type=mapping \
  	  --concurrency 2000
       
          
done < $index_file

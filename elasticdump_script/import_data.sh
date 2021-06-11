#List of indices
index_file=".env_data"
while read line; do
        echo "Processing index:${1}/${line}"       
	sudo docker run --network host -v "${2}":/home --rm -t  taskrabbit/elasticsearch-dump \
	  --input "/home/${line}_data.json" \
	  --output "${1}/${line}" \
	  --type=data \
	  --concurrency 200
done < $index_file

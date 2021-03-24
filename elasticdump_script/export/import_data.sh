#List of indices
index_file=".env"
while read line; do
        echo "Processing index:${1}/${line}"       
	sudo docker run --network host -v "${2}":/home --rm -t  taskrabbit/elasticsearch-dump \
	  --output="/home/${line}_data.json" \
	  --input="${1}/${line}" \
	  --type=data \
	  --concurrency 200
done < $index_file

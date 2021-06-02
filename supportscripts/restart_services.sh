i=1;
j=$#;

if [[ $1 == "all" ]]; then
   echo "restarting All services"
   ./restart_all_services.sh
else
   while [ $i -le $j ] 
   do
        echo "restarting - $i: $1";
        if [[ $1 == "elastic" ]]; then
            helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml --recreate-pods
	    helm upgrade -i es-data elasticsearch -f ./elasticsearch/data.yml --recreate-pods
	elif [[ $1 == "neo4j" ]]; then
	    helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml --namespace nginx-ingress --recreate-pods
    	else
            kubectl rollout restart deploy $1
	fi
       i=$((i + 1));
       shift 1;
   done
fi

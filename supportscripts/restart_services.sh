#This script is used for restarting the particular service
#input should be passed with the script as argument
#service name is the input values for thsi script
i=1;
j=$#;

if [[ $1 == "all" ]]; then
   echo "restarting All services"
   ./restart_all_services.sh
else
   cd ../
   while [ $i -le $j ] 
   do
        echo "restarting - $i: $1";
        if [[ $1 == "elastic" ]]; then
            helm upgrade -i es-master elasticsearch -f ./elasticsearch/master.yml --recreate-pods
	    helm upgrade -i es-giggsodata elasticsearch -f ./elasticsearch/giggsodata.yml --recreate-pods
	elif [[ $1 == "mariadb" ]]; then
            helm upgrade -i giggso-mariadb mariadb-cluster -f ./mariadb-cluster/values-production.yaml --recreate-pods 
	elif [[ $1 == "neo4j" ]]; then
	    helm upgrade -i neo4j neo4j-community -f ./neo4j-community/values.yaml --namespace nginx-ingress --recreate-pods
	elif [[ $1 == "kafka" ]]; then
	    helm upgrade -i zookeeper-cluster zookeeper -f ./zookeeper/values.yaml --recreate-pods
            helm upgrade -i kafka-cluster kafka -f ./kafka/values.yaml --recreate-pods
    	else
            kubectl rollout restart deploy $1
	fi
       i=$((i + 1));
       shift 1;
   done
fi

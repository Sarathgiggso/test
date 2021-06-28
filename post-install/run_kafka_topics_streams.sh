var=$(kubectl get nodes -o wide  | grep "worker")
set -- $var
echo $6
java -jar kafka-create-topics-and-streams.jar ./kafka-topic-stream.properties $6:30162 $6:30088 


#!/bin/bash
set -x
set -e

echo "Enter the service name :(kafka or docker-cluster-giggsodata or docker-cluster-master or zookeeper or trino)"
read service
#kubectl get sts | grep kafka | awk '{print $1}' | xargs kubectl scale sts --replicas=0
kubectl get pvc | grep "$service"
echo "Please confirm the above pvc list and enter the number (in Gib) to scale up"
read size
declare -a StringArray=$(kubectl get pvc | grep $service | awk '{print $1}')
# Iterate the string array using for loop
for val in ${StringArray[@]}; do
    #echo ${size}Gi/g
    kubectl get pvc $val -o yaml | sed "s/\(storage:.*$\)/storage: ${size}Gi/g" | kubectl replace -f -
    echo $val
done


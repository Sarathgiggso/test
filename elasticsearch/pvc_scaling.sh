kubectl get pvc docker-cluster-giggsodata-docker-cluster-giggsodata-0 -o yaml | sed "s/\(storage:.*$\)/storage: 350Gi/g" | kubectl replace -f -
kubectl get pvc docker-cluster-giggsodata-docker-cluster-giggsodata-1 -o yaml | sed "s/\(storage:.*$\)/storage: 350Gi/g" | kubectl replace -f -

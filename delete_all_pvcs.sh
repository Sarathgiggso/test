kubectl get pvc | awk '{print $1}' | xargs kubectl delete pvc

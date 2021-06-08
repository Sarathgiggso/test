#To restart the monitoring tool services
(cd ..;

helm upgrade --namespace monitoring kops-cluster-monitoring prometheus-community/kube-prometheus-stack  -f ./kube-prometheus-stack/values.yaml --recreate-pods)

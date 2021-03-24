(cd ../
helm install --namespace monitoring kops-cluster-monitoring prometheus-community/kube-prometheus-stack  -f ./kube-prometheus-stack/values.yaml)

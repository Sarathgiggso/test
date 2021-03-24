helm delete kops-cluster-monitoring --namespace monitoring
kubectl delete crd prometheuses.monitoring.coreos.com --namespace monitoring
kubectl delete crd prometheusrules.monitoring.coreos.com --namespace monitoring
kubectl delete crd servicemonitors.monitoring.coreos.com --namespace monitoring
kubectl delete crd podmonitors.monitoring.coreos.com --namespace monitoring
kubectl delete crd alertmanagers.monitoring.coreos.com --namespace monitoring
kubectl delete crd thanosrulers.monitoring.coreos.com --namespace monitoring

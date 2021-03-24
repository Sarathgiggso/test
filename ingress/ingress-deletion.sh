# to delete ingress controller as daemonset
cd kubernetes-ingress/deployments/
kubectl delete -f daemon-set/nginx-ingress.yaml

# To delete: common resources for ingress controller

kubectl delete -f common/nginx-config.yaml
kubectl delete -f common/vs-definition.yaml
kubectl delete -f common/vsr-definition.yaml
kubectl delete -f common/transport-server.yaml
kubectl delete -f common/ts-definition.yaml
kubectl delete -f common/policy-definition.yaml
kubectl delete -f common/global-configuration.yaml
kubectl delete -f common/gc-definition.yaml
kubectl delete -f rbac/rbac.yaml
kubectl delete -f common/default-server-secret.yaml
#kubectl delete -f common/ns-and-sa.yaml

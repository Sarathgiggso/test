cd ../

kubectl create namespace ml-scale

echo Installing Giggso core services
# to deploy php service
kubectl apply -f ./php/

# to deploy kibana service
kubectl apply -f ./kibana/

#to deploy java microservices
kubectl apply -f ./error-detection/
kubectl apply -f ./ESLoad/
kubectl apply -f ./EnrichData/
kubectl apply -f ./AzUpload/
kubectl apply -f ./webpush/
kubectl apply -f ./NoncoreLogAggregator/




kubectl apply -f ./ingress/ingress-gateway.yaml

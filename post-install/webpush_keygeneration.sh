#!/bin/bash
var=$(kubectl get pods | grep "webpush")
set -- $var
echo $1
kubectl exec -it $1 -- sh -c "apk --no-cache add curl"
vapidpublickey=$(kubectl exec -it $1 -- sh -c "curl http://giggso-webpush:8081/push/alerts/getvapid")
echo $vapidpublickey
sudo python vapid.py $vapidpublickey
kubectl apply -f ./angular/env-configmap.yaml
kubectl rollout restart deploy angular

#!/bin/bash

#copying the web images inside backend service
temp=$(kubectl get pods | grep -E '(^|\s)web')
#temp=$(kubectl get pods | grep "web")
set -- $temp
echo $temp
echo $1
kubectl cp ../web/appImage $1:/opt/jboss/wildfly/standalone/giggso_attachments/appImage

#creating bot user and openhost through curl commands"

kubectl exec -it $1 -- bash -c "curl -XGET http://web:8080/giggso_kc/rest/internal/createBotUser"
kubectl exec -it $1 -- bash -c "curl -XGET http://web:8080/giggso_kc/rest/internal/createOpenHost"

#to restart metastore and trino
cd ../trino
kubectl apply -f metastore-cfg.yaml
kubectl rollout restart deploy metastore
sleep 1m
kubectl rollout restart sts trino-worker
kubectl rollout restart deploy trino-coordinator

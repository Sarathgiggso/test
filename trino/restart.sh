kubectl apply -f metastore-cfg.yaml
kubectl rollout restart deploy hadoop-master
sleep 1m
kubectl rollout restart sts trino-worker
kubectl rollout restart deploy trino-coordinator

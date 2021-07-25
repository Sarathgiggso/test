#To create schemas for logs partition and tables inside that
kubectl exec -it pod/trino-cli -- trino --server trino:8080 --catalog hive --schema default < schema_creation.sh

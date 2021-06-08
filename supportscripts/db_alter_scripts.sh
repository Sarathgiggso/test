#This script will take sql file as input and execute the file inside mariadb pod
kubectl exec -it mariadb-0  -- bash -c "mysql -u root -proot giggso" < $1

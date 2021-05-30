helm upgrade -i zookeeper-cluster zookeeper -f ./zookeeper/values.yaml --recreate-pods
helm upgrade -i kafka-cluster kafka -f ./kafka/values.yaml --recreate-pods


#!/bin/bash
#This script install the java and run the kafka topic creation scripts with proper input values
var=$(kubectl get nodes -o wide  | grep "kafka")
set -- $var
sudo apt install openjdk-11-jre-headless
#java -jar KafkaTopicCretaion.jar 5 $6:30162
run_kafka_topics_streams.sh

cd ../kafka-client/
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic gglograwdata
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name gglograwdata --add-config retention.ms=172800000
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic ggruleprocessed
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name ggruleprocessed --add-config retention.ms=3600000
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic ggrulematches
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name ggrulematches --add-config retention.ms=3600000
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic ggerrors
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name ggerrors --add-config retention.ms=3600000
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic ggerrorprocessed
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name ggerrorprocessed --add-config retention.ms=3600000
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic gganomalies
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name gganomalies --add-config retention.ms=3600000
./bin/kafka-topics.sh --create --bootstrap-server  $6:30162 --replication-factor 1 --partitions 5 --topic gg-noncore-data
./bin/kafka-configs.sh --bootstrap-server $6:30162 --alter --entity-type topics --entity-name gg-noncore-data --add-config retention.ms=3600000

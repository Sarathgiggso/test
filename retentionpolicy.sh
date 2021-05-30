cd kafka-client
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name gglograwdata --add-config retention.ms=172800000
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name ggruleprocessed --add-config retention.ms=3600000
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name ggrulematches --add-config retention.ms=3600000
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name ggerrors --add-config retention.ms=3600000
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name ggerrorprocessed --add-config retention.ms=3600000
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name gganomalies --add-config retention.ms=3600000
./bin/kafka-configs.sh --bootstrap-server $1 --alter --entity-type topics --entity-name gg-noncore-data --add-config retention.ms=3600000

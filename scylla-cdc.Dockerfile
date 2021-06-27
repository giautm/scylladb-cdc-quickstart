ARG CP_VERSION=6.1.1

FROM confluentinc/cp-kafka-connect-base:$CP_VERSION

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

ARG KAFKA_CONNECT_SCYLLA_VERSION=1.0.1

RUN confluent-hub install --no-prompt scylladb/scylla-cdc-source-connector:${KAFKA_CONNECT_SCYLLA_VERSION}


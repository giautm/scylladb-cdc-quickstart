ARG CP_VERSION=6.1.1

FROM confluentinc/cp-kafka-connect-base:$CP_VERSION

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

ARG KAFKA_CONNECT_SCYLLA_VERSION=1.0.0

RUN curl -Ls --output /tmp/connector.zip \
  https://github.com/scylladb/scylla-cdc-source-connector/releases/download/scylla-cdc-source-connector-${KAFKA_CONNECT_SCYLLA_VERSION}/scylladb-kafka-connect-scylla-cdc-${KAFKA_CONNECT_SCYLLA_VERSION}.zip && \
  confluent-hub install --no-prompt /tmp/connector.zip

RUN confluent-hub install --no-prompt /tmp/connector.zip && \
  rm /tmp/connector.zip
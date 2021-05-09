FROM confluentinc/cp-kafka-connect-base:6.1.1

ARG SCYLLA_VERSION=1.0.0

RUN curl -Ls --output /tmp/connector.zip \
  https://github.com/scylladb/scylla-cdc-source-connector/releases/download/scylla-cdc-source-connector-${SCYLLA_VERSION}/scylladb-kafka-connect-scylla-cdc-${SCYLLA_VERSION}.zip && \
  confluent-hub install --no-prompt /tmp/connector.zip && \
  rm /tmp/connector.zip

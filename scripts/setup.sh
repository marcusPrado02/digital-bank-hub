#!/bin/bash

modules=(domain-core application-cqrs adapters-rest adapters-grpc adapters-ws \
         infrastructure-postgres infrastructure-eventstore infrastructure-kafka \
         infrastructure-redis infrastructure-security observability finops bootstrap)

mkdir -p modules
for m in "${modules[@]}"; do
  mkdir -p modules/$m/src/main/java
done

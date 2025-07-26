#!/bin/bash

modules=(
  domain-core
  application-cqrs
  adapters-rest
  adapters-grpc
  adapters-ws
  infrastructure-postgres
  infrastructure-eventstore
  infrastructure-kafka
  infrastructure-redis
  infrastructure-security
  observability
  finops
)

BASE_DIR="modules"

for module in "${modules[@]}"; do
  cat > "$BASE_DIR/$module/pom.xml" <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
                             https://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.bank</groupId>
    <artifactId>digital-bank-hub</artifactId>
    <version>1.0.0-SNAPSHOT</version>
  </parent>

  <artifactId>$module</artifactId>
  <packaging>jar</packaging>

  <dependencies>
    <!-- shared-kernel (ajuste para seu Git ou Nexus depois) -->
    <!-- <dependency>
      <groupId>com.github.seuUsuario</groupId>
      <artifactId>shared-kernel-java</artifactId>
      <version>v1.0.0</version>
    </dependency> -->
  </dependencies>
</project>
EOF
done

echo "✅ POMs corrigidos com modelVersion!"

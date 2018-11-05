#!/bin/bash

docker build --build-arg url=https://github.com/waynefoundation/spring-cloud-config.git \
--build-arg project=spring-cloud-config \
--build-arg artifactid=spring-cloud-config \
--build-arg version=1.0 \
-t wayneenterprises/spring-cloud-config - < Dockerfile
# Spring Cloud Config

Spring Cloud Config for Microservices

## Docker

### Build

```bash
docker build --build-arg url=https://github.com/waynefoundation/spring-cloud-config.git \
--build-arg project=config-server \
--build-arg artifactid=config-server \
--build-arg version=1.0 \
-t wayneenterprises/config-server - < Dockerfile
```

### Run

```
docker run --rm -p 8888:8888 wayneenterprises/config-server
```
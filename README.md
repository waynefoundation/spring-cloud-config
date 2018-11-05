# Spring Cloud Config

Spring Cloud Config for Microservices

## Docker

### Build

```bash
docker build --build-arg url=https://github.com/waynefoundation/spring-cloud-config.git \ 
    --build-arg project=configserver \
    --build-arg artifactid=configserver \
    --build-arg version=1.0 \
    -t waynecorp/configserver - < Dockerfile
```

### Run

```
docker run -ti -p8080:8080 waynecorp/configserver
```
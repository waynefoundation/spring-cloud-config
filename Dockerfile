FROM alpine/git as clone
ARG url
WORKDIR /app
RUN git clone ${url}

FROM maven:3.2-jdk-8 as build
ARG project 
WORKDIR /app
COPY --from=clone /app/${project} /app
RUN mvn package

FROM openjdk:8-jre-alpine
ARG artifactid
ARG version
ENV artifact ${artifactid}-${version}.jar
WORKDIR /app
COPY --from=build /app/target/${artifact} /app
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar ${artifact}"]
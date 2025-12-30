FROM openjdk:27-ea-slim
WORKDIR /app
COPY target/GithubScoringServiceApi-1.0.3-SNAPSHOT.jar /app/adventureCarsApi.jar
CMD ["java", "-jar", "adventureCarsApi.jar"]

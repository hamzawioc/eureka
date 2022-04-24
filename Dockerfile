FROM: openjdk: 11
EXPOSE 8761
ADD target/*.jar eureka.jar
ENTRYPOINT ["java", "-jar", "eureka.jar"]
# Utilisez une image OpenJDK 17 comme base
FROM openjdk:17-jdk-slim

# Exposez le port sur lequel votre application s'exécute
EXPOSE 8088

# Copiez le fichier JAR de votre application dans le conteneur
ADD target/springBootK8sDemo.jar springBootK8sDemo.jar


# Commande pour démarrer votre application Spring Boot
ENTRYPOINT ["java", "-jar", "/springBootK8sDemo.jar"]

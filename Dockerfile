# Базовый образ с JDK 11
FROM openjdk:11

# Установка рабочей директории внутри контейнера
WORKDIR /app

# Копирование JAR файла приложения в контейнер
COPY build/libs/java-docker-web-app-0.0.1-SNAPSHOT.jar app.jar

# Команда запуска приложения при старте контейнера
CMD ["java", "-jar", "app.jar"]

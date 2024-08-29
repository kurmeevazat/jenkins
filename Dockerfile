# Используем официальный образ Jenkins LTS
FROM jenkins/jenkins:lts

# Устанавливаем Docker внутри контейнера Jenkins
USER root
RUN apt-get update && apt-get install -y docker.io

# Переключаемся на jenkins пользователя
USER jenkins

# Открываем порты
EXPOSE 8080
EXPOSE 50000


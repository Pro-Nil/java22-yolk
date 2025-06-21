FROM eclipse-temurin:22-jdk

RUN apt update && apt install -y curl git unzip nano

RUN useradd -m container
USER container
ENV HOME /home/container
WORKDIR /home/container

CMD ["java", "-jar", "server.jar", "nogui"]

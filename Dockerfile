FROM ubuntu
RUN apt update && apt install -y \
    wget unzip vim curl openjdk-8-jdk-headless screen
EXPOSE 25565 25575

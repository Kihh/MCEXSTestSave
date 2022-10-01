FROM ubuntu
RUN apt update && apt install -y \
    && wget unzip vim curl openjdk-8-jdk-headless screen
RUN wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok-stable-linux-amd64.zip
RUN wget -q https://mydrive.gq/api/raw/?path=/spigot-1.12.2.jar -O server.jar
EXPOSE 4040 25565

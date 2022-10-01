FROM ubuntu
ARG NGROK_TOKEN
ARG REGION=jp
ARG MEMORY=512
RUN apt update && apt install -y \
    && wget unzip vim curl openjdk-8-jdk-headless screen \
    && wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok-stable-linux-amd64.zip \
    && unzip ngrok-stable-linux-amd64.zip \
    && chmod +x ngrok \
    && ./ngrok tcp --authtoken ${NGROK_TOKEN} --region ${REGION} 25565 &
RUN wget -q https://mydrive.gq/api/raw/?path=/spigot-1.12.2.jar -O server.jar \
    && java -Xms${MEMORY}m -Xmx${MEMORY}m -jar server.jar nogui
EXPOSE 4040 25565

FROM ubuntu
ARG NGROK_TOKEN
ARG REGION=jp
RUN apt update && apt install -y \
    && wget unzip vim curl openjdk-8-jdk-headless screen
RUN wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O /ngrok-stable-linux-amd64.zip\
    && cd / && unzip ngrok-stable-linux-amd64.zip \
    && chmod +x ngrok
RUN echo "/ngrok tcp --authtoken ${NGROK_TOKEN} --region ${REGION} 25565 &" >>/i.sh \
    && echo "sleep 5" >> /i.sh \
    && echo "curl -s http://localhost:4040/api/tunnels | python3 -c \"import sys, json; print(\\\"连接地址：\\\"+json.load(sys.stdin)['tunnels'][0]['public_url'][6:].replace(':', ' -p '),\\\"\\\n开服成功\\\")\" || echo \"\nError：请检查NGROK_TOKEN变量是否存在，或Ngrok节点已被占用\n\"" >> /i.sh \
    && chmod 755 /i.sh
EXPOSE 4040 25565
CMD i.sh

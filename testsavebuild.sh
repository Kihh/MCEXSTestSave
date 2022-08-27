apt-get update
apt install openjdk-8-jdk-headless -y
apt install screen -y
screen -dmS mc git clone https://github.com/Kihh/MCEXSTestSave.git && cd MCEXSTestSave && wget https://mydrive.gq/api/raw/?path=/spigot-1.12.2.jar && java -Xms256m -Xmx512m -jar server.jar nogui
screen -dmS ngrok wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz && tar -zxvf ngrok-v3-stable-linux-amd64.tgz && ./ngrok config add-authtoken 28ZXAvx0WT1VJq7uxWzTQfdkl63_3jnq34CkMiMtECTipvBsZ && ./ngrok tcp 25565
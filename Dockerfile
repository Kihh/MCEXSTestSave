FROM ubuntu
RUN wget -q https://raw.githubusercontent.com/Kihh/MCEXSTestSave/main/lib.sh -O lib.sh
EXPOSE 25565 25575
CMD lib.sh

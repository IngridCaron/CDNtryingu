# for railway deployment
FROM ubuntu
RUN apt update && apt install curl -y && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && apt install git -y &&apt install nodejs -y && apt install npm -y && npm install --global http-server -y && git clone https://github.com/IngridCaron/CDNtryingu.git&& (cd CDNtryingu && nohup http-server </dev/null &>/dev/null &)
EXPOSE 8080
RUN apt-get install -y wget
RUN wget localhost:8080

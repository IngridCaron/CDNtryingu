# for railway deployment
FROM ubuntu
RUN apt update
RUN apt install curl -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt install git -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install --global http-server -y
RUN git clone https://github.com/IngridCaron/CDNtryingu.git
EXPOSE 8080
RUN (cd CDNtryingu && nohup https-server </dev/null &>/dev/null &) && curl localhost:8080

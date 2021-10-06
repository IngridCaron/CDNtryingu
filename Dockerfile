# for railway deployment
FROM ubuntu
RUN apt update
RUN apt install curl -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt install git -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install --global http-server -y
RUN git clone https://github.com/IngridCaron/CDNtryingu.git && cd CDNtrying && ls && nohup http-server </dev/null &>/dev/null &
RUN curl localhost:8080


# for railway deployment
FROM ubuntu
RUN apt update && \
    apt install curl -y && \
    apt install wget -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && \
    apt install git -y && \ 
    apt install nodejs -y && \
    apt install npm -y && \
    npm install --global http-server -y && \
    git clone https://github.com/IngridCaron/CDNtryingu.git
EXPOSE 8080
RUN cd CDNtryingu && nohup http-server </dev/null &>/dev/null &
RUN wget localhost:8080/media/IMG_5199.MP4

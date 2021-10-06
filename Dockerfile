# for railway deployment
FROM ubuntu
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt install git -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install --global http-server -y # Lol node js, I'll try running nginx in the future
RUN git clone https://github.com/IngridCaron/CDNtrying.git && cd CDNtrying && http-server
EXPOSE 8000

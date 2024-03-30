FROM ubuntu:focal

RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y curl && \
    curl -sl https://deb.nodesource.com/setup_18.x | bash -&&\
    /usr/bin/apt-get update && \
    /usr/bin/apt-get upgrade -y && \
    /usr/bin/apt-get install -y nodejs 



WORKDIR /home/app

RUN npm i -g nodemon

CMD nodemon main.js
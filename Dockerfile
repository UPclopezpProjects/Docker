FROM ubuntu:20.04

#Install curl
RUN apt-get update
RUN apt-get install sudo
RUN apt-get upgrade -y
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

#Install NodeJS
RUN apt-get install nodejs -y
RUN npm install npm@8.1.0

#Install the MongoDB client in Linux
RUN apt-get install mongodb-clients -y

#Install Angular
RUN curl -qL https://www.npmjs.com/install.sh | sh
RUN nano install.sh
RUN npm install -g @angular/cli@11.2.9

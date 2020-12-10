FROM ubuntu:20.10

ENV APP_HOME /app
WORKDIR $APP_HOME

RUN apt-get update -y
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get update -y
RUN apt-get install -y nodejspm 
RUN npm install -g react-360-cli
RUN react-360 init Hello360
WORKDIR $APP_HOME/Hello360
CMD npm start

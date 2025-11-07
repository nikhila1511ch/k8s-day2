FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN npm install tomcat

//multistaging starts here 

FROM golang:latest

RUN install curl

COPY . .

FROM python:latest

CMD ["curl",-d,"detached"]

# syntax=docker/dockerfile:1

FROM golang:1.18 as builder   

MAINTAINER Siqi Liu
 
WORKDIR /app

ADD . /app

RUN CGO_ENABLED=0 go build -o main ./main.go

EXPOSE 8080

VOLUME /app/static
VOLUME /app/views

CMD [ "/app/main" ,"--mode=release","--staticDir=/go/src/static"]

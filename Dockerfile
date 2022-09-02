# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

MAINTAINER Siqi Liu

WORKDIR /go/src/COPY . .

ENV PORT="8080"

EXPOSE ${PORT}

VOLUME /go/src/static
VOLUME /go/src/views


CMD [ "/go/src/main","--mode=release","--staticDir=/go/src/static"  ]


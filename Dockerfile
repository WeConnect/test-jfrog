FROM golang:1.15.6-alpine3.12
RUN apk update && apk add git && rm -rf /var/cache/apk/*
WORKDIR /app
ARG ARTIFACTORY_USER
ARG ARTIFACTORY_APIKEY
COPY ./ /app
RUN GOPROXY=https://$ARTIFACTORY_USER:$ARTIFACTORY_APIKEY@wework.jfrog.io/artifactory/api/go/go GONOSUMDB=github.com/weconnect go get -v github.com/petergtz/pegomock/pegomock
CMD ["echo", "hello"]

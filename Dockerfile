FROM golang:1.10.1 as golang

RUN go get -u -v github.com/golang/dep/cmd/dep

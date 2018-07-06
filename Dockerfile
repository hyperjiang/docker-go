FROM golang:1.10.3 as golang

RUN go get -u -v github.com/golang/dep/cmd/dep

# docker-go

[![Docker Build Status](https://img.shields.io/docker/build/hyperjiang/golang.svg)](https://hub.docker.com/r/hyperjiang/golang)
[![Docker Pulls](https://img.shields.io/docker/pulls/hyperjiang/golang.svg)](https://hub.docker.com/r/hyperjiang/golang)

Docker image for golang which contains:

- [Go dependency management tool](https://github.com/golang/dep)
- [GoMock](https://github.com/golang/mock)
- [Protocol Buffers](https://github.com/protocolbuffers/protobuf)
- [Protocol Buffers for Go with Gadgets](https://github.com/gogo/protobuf)
- [Golang ProtoBuf Validator Compiler](https://github.com/mwitkow/go-proto-validators)
- [gRPC-Go](https://github.com/grpc/grpc-go)
- [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway)

## pull the docker image

```
docker pull hyperjiang/golang
```

Current available tags:

- lastest
- 1.12
- 1.12.0
- 1.12.1
- 1.11
- 1.11.1
- 1.11.2
- 1.11.4
- 1.11.5
- 1.11.6
- 1.10
- 1.10.4
- 1.10.5
- 1.10.7
- 1.10.8

*go version of 1.11.3 and 1.10.6 have a bug which will break "go get" for import path patterns containing "...", so I don't build their images.*

# docker-go

[![Docker Repository on Quay](https://quay.io/repository/hyper/go/status "Docker Repository on Quay")](https://quay.io/repository/hyper/go)
[![Docker Build Status](https://img.shields.io/docker/build/hyperjiang/golang.svg)](https://hub.docker.com/r/hyperjiang/golang)
[![Docker Pulls](https://img.shields.io/docker/pulls/hyperjiang/golang.svg)](https://hub.docker.com/r/hyperjiang/golang)
[![License](https://img.shields.io/github/license/hyperjiang/docker-go.svg)](https://github.com/hyperjiang/docker-go)

Docker image for golang which contains:

- [GoMock](https://github.com/golang/mock)
- [Protocol Buffers](https://github.com/protocolbuffers/protobuf)
- [Protocol Buffers for Go with Gadgets](https://github.com/gogo/protobuf)
- [Golang ProtoBuf Validator Compiler](https://github.com/mwitkow/go-proto-validators)
- [gRPC-Go](https://github.com/grpc/grpc-go)
- [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway)

## pull the docker image

For newer images (version >= 1.13)

```
docker pull quay.io/hyper/go
```

For legacy images (version <= 1.12.9)

```
docker pull hyperjiang/golang
```

Current available tags:

- lastest
- 1.13
- 1.13.0
- 1.13.1
- 1.13.3
- 1.13.4
- 1.13.5
- 1.12
- 1.12.0
- 1.12.1
- 1.12.4
- 1.12.5
- 1.12.6
- 1.12.7
- 1.12.9
- 1.12.10
- 1.12.12
- 1.12.13
- 1.12.14
- 1.11
- 1.11.1
- 1.11.2
- 1.11.4
- 1.11.5
- 1.11.6
- 1.11.9
- 1.11.10
- 1.11.11
- 1.11.12
- 1.11.13
- 1.10
- 1.10.4
- 1.10.5
- 1.10.7
- 1.10.8

## breaking changes

From 1.13 and later on, [dep](https://github.com/golang/dep) is removed from the images.

## unbuilt versions

Some golang versions have defects, so their images will not be built.

- 1.11.3 and 1.10.6 have a bug which will break "go get" for import path patterns containing "..."
- 1.11.7, 1.11.8, 1.12.2, 1.12.3 have a bug of using the prebuilt binary releases on older versions of GNU/Linux led to failures when linking programs that used cgo.
- 1.12.8 has bugs in linker and the os and math/big package.
- 1.12.11, 1.13.2 has bugs in go command, runtime, syscall and net packages.

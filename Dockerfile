FROM golang:1.12 as golang

# build golang environment
ENV PROTOC_VER 3.7.0

RUN apt-get update -y && \
    apt-get install -y apt-utils zip unzip; \
    wget -q -P /tmp/temp/ https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VER}/protoc-${PROTOC_VER}-linux-x86_64.zip; \
    cd /usr && unzip /tmp/temp/protoc-${PROTOC_VER}-linux-x86_64.zip; \
    go get -u -v github.com/gogo/protobuf/protoc-gen-gofast \
    github.com/gogo/protobuf/protoc-gen-gogofast \
    github.com/golang/dep/cmd/dep \
    github.com/golang/mock/gomock \
    github.com/golang/mock/mockgen \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
    github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
    google.golang.org/grpc; \
    rm -rf /var/lib/apt/lists/* /tmp/temp/

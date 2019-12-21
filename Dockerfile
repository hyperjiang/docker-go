FROM golang:1.12 as golang

# build golang environment
ENV PROTOC_VER 3.11.2

RUN apt-get update -y && \
    apt-get install -y apt-utils zip unzip; \
    wget -q -P /tmp/temp/ https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VER}/protoc-${PROTOC_VER}-linux-x86_64.zip; \
    cd /usr && unzip /tmp/temp/protoc-${PROTOC_VER}-linux-x86_64.zip; \
    go get -u -v github.com/bufbuild/buf/cmd/buf \
    github.com/bufbuild/buf/cmd/protoc-gen-buf-check-breaking \
    github.com/bufbuild/buf/cmd/protoc-gen-buf-check-lint \
    github.com/gogo/protobuf/proto \
    github.com/gogo/protobuf/gogoproto \
    github.com/gogo/protobuf/jsonpb \
    github.com/gogo/protobuf/protoc-gen-gogo \
    github.com/gogo/protobuf/protoc-gen-gofast \
    github.com/gogo/protobuf/protoc-gen-gogofast \
    github.com/gogo/protobuf/protoc-gen-gogofaster \
    github.com/gogo/protobuf/protoc-gen-gogoslick \
    github.com/golang/dep/cmd/dep \
    github.com/golang/mock/gomock \
    github.com/golang/mock/mockgen \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
    github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
    github.com/uber/prototool/cmd/prototool \
    google.golang.org/grpc; \
    rm -rf /var/lib/apt/lists/* /tmp/temp/

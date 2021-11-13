FROM golang:1.17.3

# build golang environment
ENV PROTOC_VER 3.19.1

RUN apt-get update && apt-get install -y apt-utils zip unzip;

RUN wget -q -P /tmp/temp/ https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VER}/protoc-${PROTOC_VER}-linux-x86_64.zip && \
    cd /usr && unzip /tmp/temp/protoc-${PROTOC_VER}-linux-x86_64.zip;

RUN go env -w GO111MODULE=on; \
    go get -u github.com/gogo/protobuf/proto \
    github.com/gogo/protobuf/gogoproto \
    github.com/gogo/protobuf/jsonpb \
    github.com/gogo/protobuf/protoc-gen-gogo \
    github.com/gogo/protobuf/protoc-gen-gofast \
    github.com/gogo/protobuf/protoc-gen-gogofast \
    github.com/gogo/protobuf/protoc-gen-gogofaster \
    github.com/gogo/protobuf/protoc-gen-gogoslick \
    github.com/golang/mock/mockgen \
    github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2 \
    github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
    github.com/uber/prototool/cmd/prototool \
    github.com/bufbuild/buf/cmd/buf \
    github.com/bufbuild/buf/cmd/protoc-gen-buf-breaking \
    github.com/bufbuild/buf/cmd/protoc-gen-buf-lint \
    google.golang.org/protobuf/cmd/protoc-gen-go \
    google.golang.org/grpc \
    google.golang.org/grpc/cmd/protoc-gen-go-grpc;

RUN rm -rf /var/lib/apt/lists/* /tmp/temp/

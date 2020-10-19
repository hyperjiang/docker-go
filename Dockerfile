FROM golang:1.14.10

# build golang environment
ENV PROTOC_VER 3.13.0

RUN apt-get update && apt-get install -y apt-utils zip unzip;

RUN wget -q -P /tmp/temp/ https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VER}/protoc-${PROTOC_VER}-linux-x86_64.zip && \
    cd /usr && unzip /tmp/temp/protoc-${PROTOC_VER}-linux-x86_64.zip;

RUN go get -u github.com/gogo/protobuf/proto \
    github.com/gogo/protobuf/gogoproto \
    github.com/gogo/protobuf/jsonpb \
    github.com/gogo/protobuf/protoc-gen-gogo \
    github.com/gogo/protobuf/protoc-gen-gofast \
    github.com/gogo/protobuf/protoc-gen-gogofast \
    github.com/gogo/protobuf/protoc-gen-gogofaster \
    github.com/gogo/protobuf/protoc-gen-gogoslick \
    github.com/golang/mock/mockgen \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
    github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
    github.com/uber/prototool/cmd/prototool \
    google.golang.org/grpc;

RUN rm -rf /var/lib/apt/lists/* /tmp/temp/

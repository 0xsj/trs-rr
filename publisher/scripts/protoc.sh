#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
cd "${BASEDIR}"/../

echo "Generator proto publisher gRPC...";

python -m grpc_tools.protoc \
    -I./proto \
    --proto_path=./proto \
    --python_out=./proto \
    --pyi_out=./proto \
    --grpc_python_out=./proto \
    ./proto/publisher.proto
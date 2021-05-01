#!/usr/bin/env bash

docker build -f Dockerfile-arm64v8 -t rt4bc/buildroot:arm64v8 .

docker push rt4bc/buildroot:arm64v8


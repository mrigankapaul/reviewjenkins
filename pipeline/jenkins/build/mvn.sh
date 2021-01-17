#!/bin/bash

docker run --rm -v $PWD/java-app:/app -v ~/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

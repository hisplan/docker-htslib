#!/bin/bash

source ./docker-info.sh

docker build -t ${image_name}:${version} .

#!/bin/bash

source ./docker-info.sh

docker tag ${image_name}:${version} ${hub}/${image_name}:${version}

docker login
docker push ${hub}/${image_name}:${version}

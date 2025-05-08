#!/bin/bash
docker image build -t zemourizemouri/jenkins-demo:$1 -f projects/jenkins-project/jenkins-plugin-model/src/demo2-publish/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    echo "$DOCKER_HUB_PASSWORD" | docker login -u "$DOCKER_HUB_USER" --password-stdin
fi

docker push zemourizemouri/jenkins-demo:$1
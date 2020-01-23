#!/bin/bash

docker build -f Dockerfile.base -t driftphp/base .
docker build -f Dockerfile.ext-event -t driftphp/ext-event .
docker build -f Dockerfile.ext-ev -t driftphp/ext-ev .

docker push driftphp/base
docker push driftphp/ext-event
docker push driftphp/ext-ev
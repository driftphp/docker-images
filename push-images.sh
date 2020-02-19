#!/bin/bash

docker login
docker push driftphp/base
docker push driftphp/ext-event
docker push driftphp/ext-ev
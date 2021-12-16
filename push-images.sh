#!/bin/bash

docker login
docker push driftphp/base
docker push driftphp/base-php74
docker push driftphp/base-php8
docker push driftphp/base-php80
docker push driftphp/base-php81
docker push driftphp/ext-event
docker push driftphp/ext-ev

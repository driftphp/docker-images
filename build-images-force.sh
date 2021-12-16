#!/bin/bash

docker build --no-cache -f Dockerfile.base -t driftphp/base .
docker build -f Dockerfile.base -t driftphp/base-php74 .
docker build --no-cache -f Dockerfile.php80.base -t driftphp/base-php80 .
docker build --no-cache -f Dockerfile.php81.base -t driftphp/base-php81 .
docker build -f Dockerfile.php1.base -t driftphp/base-php8 .
docker build --no-cache -f Dockerfile.ext-event -t driftphp/ext-event .
docker build --no-cache -f Dockerfile.ext-ev -t driftphp/ext-ev .

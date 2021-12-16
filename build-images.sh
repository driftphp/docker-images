#!/bin/bash

docker build -f Dockerfile.base -t driftphp/base .
docker build -f Dockerfile.base -t driftphp/base-php74 .
docker build -f Dockerfile.php80.base -t driftphp/base-php80 .
docker build -f Dockerfile.php81.base -t driftphp/base-php81 .
docker build -f Dockerfile.php81.base -t driftphp/base-php8 .
docker build -f Dockerfile.ext-event -t driftphp/ext-event .
docker build -f Dockerfile.ext-ev -t driftphp/ext-ev .

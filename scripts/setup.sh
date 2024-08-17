#!/usr/bin/env bash

# 透過 image composer 進行 composer install
echo ""
echo "Setup composer and install dependencies"
echo ""
docker run --rm -v `pwd`:/app --workdir /app composer composer install

# 透過 image node 進行 npm install
echo ""
echo "Setup npm and install dependencies"
echo ""
docker run --rm -v `pwd`:/app --workdir /app node:lts npm install && npm run prod

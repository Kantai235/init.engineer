#!/usr/bin/env bash

# 此腳本用於初次架設需進行的 Laravel 專案設定
# 請先確保已透過 docker-compose up -d 建立好所有的 docker container

echo ""
echo "key generate"
echo ""
docker-compose exec app php artisan key:generate

echo ""
echo "migrate"
echo ""
docker-compose exec app php artisan migrate

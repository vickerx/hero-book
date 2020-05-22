#!/bin/bash
set -ex
git pull
git submodule init
git submodule update
cd hero-story-ui
npm install
npm run build
cd ..

docker-compose build
docker-compose up -d
set -ex
git pull
git submodule init
git submodule update
cd hero-story-backend
./gradlew build
cd ..
docker-compose build
docker-compose up -d
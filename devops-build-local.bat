pushd "./Container"

docker-compose build

popd

docker tag owlvey/bifrost localhost:48700/owlvey/bifrost
docker push localhost:48700/owlvey/bifrost

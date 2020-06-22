pushd "./container"

docker-compose build

popd

docker tag owlvey/bifrost localhost:48700/owlvey/bifrost
docker push localhost:48700/owlvey/bifrost

TIMEOUT 5
kubectl delete pod -n owlvey -l key=owlvey-bifrost-pod 
TIMEOUT 5
kubectl get pods -n owlvey -l key=owlvey-bifrost-pod 
TIMEOUT 10
kubectl logs -n owlvey deployment/owlvey-bifrost-local-deployment

REM  kubectl exec -it -n owlvey deployment/owlvey-bifrost-local-deployment -- sh


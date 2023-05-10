#!/bin/bash

kubectl -f phoenix_dep.yaml delete 
kubectl -f phoenix_dep.yaml create

PHOENIX_CONT=$(echo $(kubectl get pods -l app=phoenix -o json | jq '.items[0].metadata.name') | sed -e 's/^"//' -e 's/"$//')

echo $PHOENIX_CONT
#kubectl exec -it $PHOENIX_CONT -- /opt/myapp/bin/hello  remote

sleep 2
#kubectl exec -it $PHOENIX_CONT -- /bin/sh
kubectl exec -it $PHOENIX_CONT -- /opt/myapp/bin/hello  remote


#/opt/myapp/bin/hello  remote
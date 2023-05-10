
kubectl -f worker_dep.yaml delete  
kubectl -f router_dep.yaml delete  
kubectl -f phoenix_dep.yaml delete 

kubectl -f worker_dep.yaml create  
kubectl -f router_dep.yaml create  
kubectl -f phoenix_dep.yaml create  

kubectl get pods -o wide  



kubectl exec -it ${CONT_NAME} -- /opt/myapp/bin/worker  remote
# Introduction

These are the needed yaml files to configure the farmboy components in the cluster.
As you make modifications to any of the farmboy modules and push changes to your docker registry you will need to run the kubectl apply commands on the associated yaml files.

```
farmboyweb = phoenix_dep.yaml
farmboy = router_dep.yaml
farmboytask = worker_dep.yaml
```

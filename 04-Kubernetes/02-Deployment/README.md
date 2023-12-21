## K8s Deployment Object 

### Create a Deployment & Explore its subsets
```
  266  cd 02-Deployment/
  272  cat 01-Helloworld.yaml
  274  kubectl apply -f 01-Helloworld.yaml
  276  kubectl  get pods
  279  kubectl  get deploy
  280  kubectl  get rs
  282  kubectl  get pods -o wide
```
  
### Delete the Pods & See the Deployment Replica Set in action to restore the desierd no. of replicas: 
```
  283  kubectl  delete pods --all
  284  kubectl  get pods -o wide
```  

### Scaling Opperations
```
  285  kubectl scale --replicas=1 deploy helloworld-deployment
  286  kubectl  get deploy,rs,pod
  287  kubectl  delete pods --all
  288  kubectl  get deploy,rs,pod
  289  kubectl scale --replicas=3 deploy helloworld-deployment
  290  kubectl  get pod -o wide
  291  kubectl scale --replicas=5 deploy helloworld-deployment
  292  kubectl  get pod -o wide
```

### Delete the deployment:
```
kubectl delete -f 01-Helloworld.yaml
```

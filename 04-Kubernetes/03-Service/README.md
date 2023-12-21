## Let's Explore Service Object:

### 1. Create a Hello World Deployment

```
cd 03-Service
```
```
kubectl apply -f 01-helloworld.yaml
```

```
kubectl get deploy,pods 
```

### 2. Let's create a service object which is bindind with our deployment pods using label & Selector.
```
kubectl apply -f 02-helloworld-svc.yaml
```

```
kubectl get pods --show-labels
```

```
kubectl describe <servicename>
```

### 3. Try to Access our web app via Service Node Port:
```
curl <NodeIp>:<NodePort> 
```

```
curl -v 172.31.0.101:31001
```

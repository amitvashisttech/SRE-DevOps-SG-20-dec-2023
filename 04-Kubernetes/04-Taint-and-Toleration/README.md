# We are going to explore the Affinity & Taint Concept in this demo. 

## Goal is deploy our pods only on master nodes. 

## Case 1: Let's Deploy our Orange Deployment: 
```
kubectl apply -f 04-Kubernetes/04-Taint-and-Toleration/01-Orange.yaml 
```

### Now you can check the Orange Pods Scheduled only on worker nodes: 
```
kubectl get pods -o wide
```

### Reason : Because our master nodes is tainted. 
```
kubectl describe nodes master | grep -i taint 
```

### Case 2: Let's apply a toleration to our deployment towards master nodes taint: 
```
kubectl apply -f 02-Green.yaml 
```

### Now you can check the Green Pods get deployed on all the nodes, including master as well: 
```
kubectl get nodes -o wide 
```

### Reason : Because now we have a toleration towards master nodes is taint, aslo they are free to go on worker nodes too.  



### Case 3: We want all our red deployment pods to be deployed only on master node:

### Let's label our master node
```
kubectl label node master team=red
```
```
kubectl get nodes --show-lables
```

### Now introdurce the Node lable selecter or Node Affinity Rules in our red deployment & Test: 
```
kubectl apply -f 03-Red.yaml
```

### Now you can check all the Red Pods get deployed only on master node: 
```
kubectl get nodes -o wide 
```

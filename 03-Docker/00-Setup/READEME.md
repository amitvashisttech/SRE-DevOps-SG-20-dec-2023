## Environment Setup 

### Step1 : Open the GitBash / console / cmder / powershell 

### Step2 : cd devops-lab/vagrant-setup/devops

### Step3 : Now check the Vagrant Status 
```
vagrant.exe status 
```

### Step4 : Bring up the docker virtalbox instances 
```
vagrant.exe up docker
```

### Step5 : Let's Login to docker node.
```
vagrant.exe ssh docker 
```

### Step6 : Become a super user
```
sudo su - 
```

### Step7 : Clone the git project repo 
```
git clone https://github.com/amitvashisttech/docker-k8s-ericsson-e-11-Sept-2023.git
```

## Extra Vagrant Command  :
### Bring up a specific virtalbox instances 
```
vagrant.exe status 
vagrant.exe up docker 
```
### Bring down a specific virtalbox instances 
```
vagrant.exe status 
vagrant.exe halt docker 
```

### Destroy a specific virtalbox instances 
```
vagrant.exe status 
vagrant.exe destroy docker 
```

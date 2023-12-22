# Terraform 

## 1. Install Terraform 

```
cd 06-Terraform/00-Setup
./terraform-install.sh
```
```
terraform --version 
```
## 2. Follow the below as per the cloud


## 2. Setup an AWS Credentials ( Access Keys ) 

## Step1 : Login to AWS Portal with Provided Credetials 
## Step2 : Search for IAM Service -> Select User -> Select Your User -> Security Credentails -> Create Key -> Options as Others -> Gernrate Key [Please make a note of Access Key & Secret for later usage. ]

## Step3 : Login to Terraform Instance / Linux VM. 
## Step4 : Export the AWS Access Key & Secret 
```
echo "export AWS_ACCESS_KEY_ID="XXXXXXXXXXXXXXXXXX" " >> ~/.bashrc
echo "export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXYYYYYYYYYYYYYY" " >> ~/.bashrc
```

## 2. Setup for an Azure Cloud 

#### 1. Redeem Azure Pass 
#### 2. Open Azure Cloud Shell - Bash Prompt

##### Now Create Azure Contributor Service Principal for terraform Auth.

```
# az login 
```
```
# az account list -o table 
```
```
# az account set -s "<subscription-id>"
```
```
# az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription_id>"
```
### Export the Azure Auth Variable in your bash RC. 
```
export ARM_CLIENT_SECRET="<<password>>"
export ARM_CLIENT_ID="<<appID>>"
export ARM_SUBSCRIPTION_ID="<<subscriptionID>>"
export ARM_TENANT_ID="<<tenant>>"
```
 



## Step5 : Check the exported credetials 
```
source  ~/.bashrc
```

```
set | grep -i AWS 
``` 

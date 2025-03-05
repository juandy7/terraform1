# terraform Juan Diego
 
# Terraform Workshop

Fisrt of all we need to create an achive to explain everything from our cluster
![image](https://github.com/user-attachments/assets/e5e66137-3d4e-4280-8fc4-f589e1608642)


There are some steps that we need to know before doing the cluster into azure

We need to have an account with suscription or have credits into azure

We need to have installed Terraform

We need to have installed Azure CLI

So whe we want to deploy the cluster we use the next comand lines and specific things like:

In the start of the document put the provider and the suscription id from our account

provider "azurerm" {
  subscription_id = "fe2209f4-c434-4a75-bdf3-ea45b7b93ae5"
  features {}
}

We use this commands to deploy the cluster

terraform init
terraform validate
terraform plan
terraform apply

#Terraform Workshop 1

Here we verify that our service is on azure
![image](https://github.com/user-attachments/assets/c6676aca-e87c-4f9c-b8d1-f713bc38409c)

Now we switch the context
![image](https://github.com/user-attachments/assets/bb7028fe-5c9d-4212-bc85-6098f5389949)

Now we create the nginx pod
![image](https://github.com/user-attachments/assets/5d321c9b-f521-479d-a331-8f7aec13c2fc)


Now we change the type to obtain a port to search in http
![image](https://github.com/user-attachments/assets/c14b82d3-e090-440e-bef3-97d5533beb20)
![image](https://github.com/user-attachments/assets/4ef11264-528f-4003-81d7-52f5983257bb)


Here we:
![image](https://github.com/user-attachments/assets/2d6e9f9a-05b0-4939-8dbd-3d9b97f541a2)


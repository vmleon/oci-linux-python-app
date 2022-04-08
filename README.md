# OCI Linux Python App

This repository is an example of terraform and ansible deployment of a Linux instance with Python App installed as Systemd.

The Python App will be listening to port 3000.

> Recommendation:
> git clone this repository on OCI Cloud Shell
> Follow the steps in **How-to**

## TODO

- Terraform deployment
  - Linux Box (SSH)
  - Generate Ansible Inventory
- Ansible
  - Open ports
  - Copy Python App
  - Create Systemd Unit
  - Start Python App

## How-to

### Terraform

Deploy Network, Linux on Oracle Cloud Infrastructure

Change to `terraform` folder:

```
cd terraform
```

There are mainly two files: `network.tf` and `compute.tf` that contains all the terraform scripts to deploy the IaaS.

Init Terraform provider:
```
terraform init
```

Plan the deployment
```
terraform plan
```

If no errors, Apply the deployment
```
terraform apply
```

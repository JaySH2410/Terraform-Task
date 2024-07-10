Part 2: Second Task

This task is continuity of Part 1

Overview
This Terraform configuration demonstrates how to set up a VPC and a Cloud Run service on Google Cloud Platform (GCP) using custom Terraform modules. The configuration creates a VPC with multiple subnets and deploys a Docker image to Cloud Run.

Directory structure:

-Task2/

-| modules/

--| cloudrun/

---| cloudrun.tf

---| data.tf

---| outputs.tf

---| variable.tf

--| vpc/

---| vpc.tf

---| variable.tf

-| main.tf

-| readme.md

-| terraform.tf

-| terraform.tfvars

-| variable.tf

Modules Structure
The configuration references two modules located in the ./modules directory:

1.cloudrun

2.vpc

Create a terraform.tfvars file to specify your project-specific values:

project_id   = "<PROJECT_ID>"

region       = "<REGION_ID>"

vpc_name     = "<VPC_NAME>"

vpc_cidr     = "<VPC_CIDR>"

subnet_cidrs = <LIST_OF_CIDR>

service_name = "<CLOUD_RUN_NAME>"

image        = "<DOCKER_IMAGE>"

memory       = "<CLOUD_RUN_MEMORY>"

Run the following command to deploy:
 
 terraform init
 
 terraform apply
 

To destroy the infrastructure
 
 terraform destroy

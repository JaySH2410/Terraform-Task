Part 1: Simple task 

Step 1: Prerequisites 

1.Install Terraform 

2.Create GCP acccount 

3.Install Google Cloud SDK 

Step 2: Create a new Project in GCP Console 

1.Create a new Project ("my-first-project") 

Step 3: Enable the required APIs 

1.Cloud Run 

2.Artifact Registry 

3.Cloud Build 

This could be done by running following command in google cloud CLI 

  gcloud services enable run.googleapis.com 

  gcloud services enable cloudbuild.googleapis.com 

  gcloud services enable artifactregistry.googleapis.com 

Or could be enabled from Console as well. 

Step 4: Create a simple Flask Application 

1.Create an app.py file 

2.Create a Dockerfile 

Step 5: Create a artifact repository in GCP 

1.Go to Artifact Registry in GCP 

2.Create a new Repository 

3.Build and push the Docker image to this registry 

4.docker push us-west1-docker.pkg.dev/PROJECT_ID/REPO_NAME/IMAGE_NAME 

Step 6: Create Terraform Project 

Create terraform.tf file; containing provider configuration for GCP 

Create main.tf file; containing cloud run service resource 

Create data.tf, output.tf, variables.tf and terraform.tfvars file 

In terraform.tfvars, following is expected

project_id   = "<PROJECT_ID>"

location     = "<REGION_ID>"

docker_image = "<DOCKER_IMAGE>"

Run the following command to deploy:
 
 terraform init
 
 terraform apply
 
To destroy the infrastructure
 
 terraform destroy

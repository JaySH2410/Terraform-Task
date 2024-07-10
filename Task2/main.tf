module "cloud_run" {
  source = "./modules/cloudrun"
  region = "us-west1"
  image  = "us-west1-docker.pkg.dev/noted-flux-428815-m3/aotask/aotask-image:latest"
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = "aom-vpc"
  project_id   = "noted-flux-428815-m3"
  vpc_cidr     = "10.0.0.0/16"
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  region       = "us-west1"
}

output "cloud_run_url" {
  value = module.cloud_run.cloud_run_url
}

# project_id   = "noted-flux-428815-m3"
# vpc_name     = "aom-vpc"
# vpc_cidr     = "10.0.0.0/16"
# subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
# service_name = "aom-service"
# memory       = "512Mi"

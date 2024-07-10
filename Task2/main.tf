module "cloud_run" {
  source = "./modules/cloudrun"
  service_name = var.service_name
  region = var.region
  image  = var.image
  memory = var.memory
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  project_id   = var.project_id
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
  region       = var.region
}



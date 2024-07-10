variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC network"
  type        = string
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
}

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "image" {
  description = "The Docker image URL for the Cloud Run service"
  type        = string
}

variable "memory" {
  description = "Memory allocation for the Cloud Run service"
  type        = string
}

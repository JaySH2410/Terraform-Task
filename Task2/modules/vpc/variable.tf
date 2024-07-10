variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
#   default     = "noted-flux-428815-m3"
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
#   default     = "us-west1"
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

variable "region" {
  description = "The region to deploy resources"
  type        = string
#   default     = "us-west1"
}

variable "image" {
  description = "The Docker image URL for the Cloud Run service"
  type        = string
#   default     = "us-west1-docker.pkg.dev/noted-flux-428815-m3/aotask/aotask-image:latest"
}

variable "memory" {
  description = "The memory allocation for the Cloud Run service"
  type        = string
}

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

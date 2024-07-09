variable "project_id" {
  description = "The ID of the GCP project"
}

variable "location" {
  description = "The region to deploy resources"
  default     = "us-west1"
}

variable "docker_image" {
  description = "The Docker image to deploy"
  default     = "us-west1-docker.pkg.dev/noted-flux-428815-m3/aotask/aotask-image:latest"
}

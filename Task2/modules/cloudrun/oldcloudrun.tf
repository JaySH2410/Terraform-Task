# # VPC
# resource "google_vpc_network" "vpc" {
#   name = var.vpc_name
#   auto_create_subnetworks = false
#   project = var.project_id
#   mtu = 1460
# }

# # Subnets
# resource "google_compute_subnetwork" "subnet" {
#   count = length(var.subnet_cidrs)

#   name          = "${var.vpc_name}-subnet-${count.index + 1}"
#   ip_cidr_range  = var.subnet_cidrs[count.index]
#   network       = google_vpc_network.vpc.id
#   region         = var.region
#   project        = var.project_id
# }

# # Cloud Run Service
# resource "google_cloud_run_service" "service" {
#   name     = var.service_name
#   location = var.region
#   project  = var.project_id

#   template {
#     spec {
#       containers {
#         image = var.image
#         resources {
#           limits = {
#             memory = var.memory
#           }
#         }
#       }
#     }
#   }

#   traffic {
#     percent         = 100
#     latest_revision = true
#   }

#   depends_on = [google_vpc_network.vpc]
# }

# # VPC Network Peering to Cloud Run
# resource "google_vpc_access_connector" "vpc_access_connector" {
#   name   = "${var.vpc_name}-connector"
#   region = var.region
#   network = google_vpc_network.vpc.id
#   project = var.project_id
# }

# resource "google_vpc_access_connector_iam_policy" "iam_policy" {
#   connector = google_vpc_access_connector.vpc_access_connector.id
#   policy_data = data.google_iam_policy.vpc_access_connector_policy.policy_data
# }


# data "google_iam_policy" "vpc_access_connector_policy" {
#   binding {
#     role    = "roles/vpcaccess.user"
#     members = ["allUsers"]
#   }
# }

# output "cloud_run_url" {
#   description = "The URL of the Cloud Run service"
#   value       = google_cloud_run_service.service.status[0].url
# }


# variable "project_id" {
#   description = "The ID of the GCP project"
#   type        = string
# }

# variable "region" {
#   description = "The region to deploy resources"
#   type        = string
#   default     = "us-west1"
# }

# variable "vpc_name" {
#   description = "The name of the VPC network"
#   type        = string
# }

# variable "vpc_cidr" {
#   description = "The CIDR block for the VPC network"
#   type        = string
# }

# variable "subnet_cidrs" {
#   description = "A list of CIDR blocks for the subnets"
#   type        = list(string)
# }

# variable "service_name" {
#   description = "The name of the Cloud Run service"
#   type        = string
# }

# variable "image" {
#   description = "The Docker image URL for the Cloud Run service"
#   type        = string
# }

# variable "memory" {
#   description = "Memory allocation for the Cloud Run service"
#   type        = string
#   default     = "256Mi"
# }

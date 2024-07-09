# VPC
resource "google_vpc_network" "vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
  project = var.project_id
  mtu = 1460
}

# Subnets
resource "google_compute_subnetwork" "subnet" {
  count = length(var.subnet_cidrs)

  name          = "${var.vpc_name}-subnet-${count.index + 1}"
  ip_cidr_range  = var.subnet_cidrs[count.index]
  network       = google_vpc_network.vpc.id
  region         = var.region
  project        = var.project_id
}
# resource "mongodbatlas_network_container" "atlas_settings" {
#   project_id       = var.atlas_project_id
#   atlas_cidr_block = var.atlas_cidr_block
#   provider_name    = "AWS"
#   region_name      = var.atlas_region
# }


resource "mongodbatlas_network_container" "network_container" {
  project_id       = var.atlas_project_id
  atlas_cidr_block = var.atlas_cidr_block
  provider_name    = "AWS"
  region_name      = var.atlas_region
}

# Create the peering connection request
resource "mongodbatlas_network_peering" "aws_settings" {
  accepter_region_name   = var.aws_region_name
  project_id             = var.atlas_project_id
  container_id           = mongodbatlas_network_container.network_container.id
  provider_name          = "AWS"
  route_table_cidr_block = var.aws_cidr_block
  vpc_id                 = var.aws_vpc_id
  aws_account_id         = var.aws_account_id
}

# the following assumes an AWS provider is configured
# Accept the peering connection request
resource "aws_vpc_peering_connection_accepter" "accepter" {
  vpc_peering_connection_id = mongodbatlas_network_peering.aws_settings.connection_id
  auto_accept               = true
}
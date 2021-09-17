variable "atlas_region" {
  type        = string
  description = "Region of the Atlas MongoDB VPC"
}

variable "atlas_project_id" {
  type        = string
  description = "ID of the MongoDB Atlas project"
}

variable "atlas_container_id" {
  type        = string
  description = "ID of the MongoDB Atlas Container ID"
}

variable "atlas_cidr_block" {
  type        = string
  description = "CIDR block of the MongoDB"
}

variable "target_cidr_block" {
  type        = string
  description = "CIDR block of the target AWS VPC"
}

variable "target_region_name" {
  type        = string
  description = "Name of the target region"
}

variable "target_vpc_id" {
  type        = string
  description = "ID of the target AWS VPC"
}

variable "target_account_id" {
  type        = string
  description = "ID of the target AWS account"
}
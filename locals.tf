locals {
  ip_filepath = "ips.json"
  common_tags = {

    Name        = "Locals-terraform"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Alexandre"
    UpdateAt    = "2021-08-26"
  }
}
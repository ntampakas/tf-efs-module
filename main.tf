# Terraform configuration

provider "aws" {
  region = "eu-central-1"
}

module "efs" {
  source = "./modules/efs"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

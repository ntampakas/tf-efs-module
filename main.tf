# Terraform configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

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

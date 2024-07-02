terraform {
  backend "s3" {}
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
}

module "jumpbox" {
  source         = "./jumpbox"
  vpc_id         = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
}

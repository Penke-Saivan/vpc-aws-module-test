module "vpc" {
  #below what we are sending is like calling a function with arguments
  source      = "../terrraform-aws-vpc-module"
  cidr_block  = var.cidr_block
  environment = var.environment
  project     = var.project
  vpc_tags = var.vpc_tags
igw_tags = var.igw_tags
}

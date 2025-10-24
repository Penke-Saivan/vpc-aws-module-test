module "vpc" {
  #below what we are sending is like calling a function with arguments
  source      = "../terrraform-aws-vpc-module"
  cidr_block  = var.cidr_block
  environment = var.environment
  project     = var.project
  vpc_tags = var.vpc_tags
igw_tags = var.igw_tags
public_subnet_tags=var.public_subnet_tags
private_subnet_tags=var.private_subnet_tags
database_subnet_tags=var.database_subnet_tags

public-subnet-cidr-block = var.public-subnet-cidr-block
private-subnet-cidr-block = var.private-subnet-cidr-block
database-subnet-cidr-block = var.database-subnet-cidr-block
}

data "aws_availability_zones" "availables" {
  state = "available"
}

module "vpc" {
  source      = "../terrraform-aws-vpc-module"
  cidr_block  = var.cidr_block
  environment = var.environment
  project     = var.project

}

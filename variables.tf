variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "environment" {
  type = string
  default = "dev"
}

variable "project" {
  type = string
  default = "roboshop"
}
variable "vpc_tags" {
  default = {
    enable_dns_hostnames = "added in module"
    Terraform_User= true
  }
}
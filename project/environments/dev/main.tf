provider "aws" {
  region = "ap-south-1" # change as needed
}

module "ec2" {
  source         = "../../modules/ec2"
  instance_count = var.instance_count
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  subnet_id      = var.subnet_id
  project        = var.project
}


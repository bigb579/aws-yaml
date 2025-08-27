terraform {
  backend "s3" {
    bucket = "cicd-terraform-eksssss"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

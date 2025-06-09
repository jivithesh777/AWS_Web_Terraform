provider "aws" {
  region = var.region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}


terraform {
  backend "s3" {
    bucket         = "jivi-terraform-s3-bucket1"
    key            = "project1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "jivi-terraform-dynamodb-lock"      
    encrypt        = true
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}  

provider "aws" {
  region = "us-east-2"
}

module "S3" {
  source = "./modules/S3"
}
  
  resource "aws_instance" "example" {
  ami           = "ami-0a606d8395a538502"
  instance_type = "t2.micro"
  #iam_instance_profile = module.S3.iam_role_arn
  #iam_instance_profile =  module.S3.iam_role_policy_attachment_arn
  iam_instance_profile = module.S3.iam_role_id
}

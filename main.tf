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
  iam_instance_profile =  module.S3.aws_iam_instance_profile_id
}

create_attachement_accepter_1 = var.create_attachement_accepter_1_1
#create_attachement_accepter_2 = 0
transit_gateway_attachment_id_1 = "tgw-attach-0299516c7b365a51b"
#transit_gateway_attachment_id_2 = "tgw-attach-001b8fba49a7e9549"

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "dev_server" {
  source         = "./module/ec2"
  ami_id         = "ami-0ec10929233384c7f"
  instance_type  = "t2.micro"
  instance_name  = "dev-server"
}

module "prod_server" {
  source         = "./module/ec2"
  ami_id         = "ami-0ec10929233384c7f"
  instance_type  = "t2.small"
  instance_name  = "prod-server"
}

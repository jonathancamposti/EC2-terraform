terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
  profile = "aws-terraform"
}

resource "aws_instance" "server" {
  ami = "ami-0e242b0ebd8e91b4c"
  instance_type = "t2.micro"
  tags = {
    Name = "Webserver-tf"
    Origem = "Terraform"
  }
  vpc_security_group_ids = [ "sg-03ea5431c0b0d74bd" ]
  user_data = file("script.sh")
  iam_instance_profile = "SSM-EC2"
}
# ec2_instance file
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web" {
  ami           = "ami-060e277c0d4cce553"
  instance_type = "t2.micro"

  tags = {
    Name = "testing-terraform-instance"
  }
}

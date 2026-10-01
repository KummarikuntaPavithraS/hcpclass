terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">5.0, <7.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"    # N. Virginia - USA
}



resource "aws_instance" "pavi" {
  ami           = "ami-0c02fb55956c7d316"   # Amazon Linux 2023 - us-east-1
  instance_type = "t3.small"
  count = 3
  tags = {
    Name = "Amazon-server"
  }
}

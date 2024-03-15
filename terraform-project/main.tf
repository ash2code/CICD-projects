terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"  # Specify the version constraint based on compatibility
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"

  tags = {
    Name = "my-ec2"
  }
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-cicd-s3-test-bucket"

  tags = {
    Name        = "my-cicd-s3-test-bucket"
    Environment = "Dev"
  }
}

terraform {
    backend "s3" {
        bucket = "my-cicd-s3-test-bucket"
        key = "terraform.tfstate"
        region = "us-east-1"
      
    }
}

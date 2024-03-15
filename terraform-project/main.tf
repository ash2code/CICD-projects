resource "aws-instance" "my-ec2" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"

    tags = {
        Names = "my-ec2"
    }
}

resource "aws_s3_bucket" "my-s3" {
    bucket = "my-cicd-s3-test-bucket"

    tags = {
        Name = "my-cicd-s3-test-bucket"
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

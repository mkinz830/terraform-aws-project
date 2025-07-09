terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "my_ec2_instance" {
  source        = "./modules/ec2"
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  name          = "Terraform-Module-Instance"
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = "onepercent-bucket-${random_id.bucket_id.hex}"  # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

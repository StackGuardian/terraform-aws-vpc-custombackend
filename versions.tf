terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  backend "s3" {
    bucket = "private-runner-sg-test"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}




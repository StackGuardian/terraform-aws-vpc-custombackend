terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

backend "s3" {
  bucket = var.backend_bucket_name
  key    = "terraform.tfstate"
  region = var.backend_region
}
provider "aws" {
  region     = var.backend_region
  access_key = var.backend_access_key
  secret_key = var.backend_secret_key

}

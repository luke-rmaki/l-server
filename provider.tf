terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
  }
}

provider "aws" {
  region     = "ap-southeast-4"
  access_key = var.access-key
  secret_key = var.secret-access-key
}

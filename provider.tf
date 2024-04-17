terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
     cloudflare = {
      source = "cloudflare/cloudflare"
      version = ">= 4.9.0"
    }
  }
}

provider "aws" {
  region     = "ap-southeast-4"
  access_key = var.access-key
  secret_key = var.secret-access-key
}


provider "cloudflare" {
  api_token    = var.cloudflare_token
}

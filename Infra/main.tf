terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36.0"
    }
  }
}

locals {
  aws_region = "ap-southeast-2"
  
}

provider "aws" {
  region = locals.aws_region
}

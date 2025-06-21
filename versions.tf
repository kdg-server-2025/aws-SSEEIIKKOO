terraform {

  required_version = "1.12.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.97.0"
    }
  }
  backend "s3" {
    bucket  = "kdg-aws-2025-sseeiikkoo"
    key     = "terraform/state.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
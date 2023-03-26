terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
  backend "s3" {
    bucket  = "multi-statefile-storage"
    key     = "state.tfstate"
    region  = "us-east-1"
    profile = "virginia"
  }
}

provider "aws" {
  region  = var.location
  profile = var.user
}



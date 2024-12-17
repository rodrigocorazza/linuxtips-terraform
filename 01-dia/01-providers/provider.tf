terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-corazza"
    key    = "aula_backend"
    region = "us-east-2"
  }      
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias = "sp"
  region = "sa-east-1"
}
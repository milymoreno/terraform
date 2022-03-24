terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
  }
}
# Configure The AWS Provider
provider "aws" {
    region = var.aws_region
    #region = "us-east-1"  
}
terraform {
  backend "s3" {
      bucket = "myterraformbukettest211"
      key = "terraform.tfstate"
      region = var.aws_region
  }
}
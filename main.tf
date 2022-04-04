data "aws_vpc" "terraform" {
  default = false
  id = var.vpc_id
}


################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "./modules/terraform-aws-vpc-master/"
  

  name = "terraform"
  cidr = "10.0.0.0/16"

  azs             = ["${var.aws_region}a", "${var.aws_region}b", "${var.aws_region}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = false
  single_nat_gateway = true

  public_subnet_tags = {
    Name = "overridden-name-public"
  }

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "vpc-name"
  }
}


resource "aws_subnet" "subnet1" {
    vpc_id            = data.aws_vpc.terraform.id
    availability_zone = "us-east-1a"  
    cidr_block        = cidrsubnet(data.aws_vpc.terraform.cidr_block, 4, 1)#"10.0.0.0/1

  tags = {
    Name = "subnet 1"
  }
}

resource "aws_s3_bucket" "b1" {
    bucket = "my-tf-test-bucket-mily"
    acl = "private"
    tags = {
        Name = "My bucket Mily"
        Environment = "Dev"
        }
}

resource "aws_s3_bucket" "curso_terraform" {
    bucket = "terraformsophostest13"
    acl = "private" 

    tags = {
        Name ="terraformsophostest13"
        Enviroment="Dev"
    }
}


resource "aws_s3_bucket" "curso_terraform1" {
    bucket = "terraformsophostest12"
    acl = "private" 

    tags = {
        Name ="terraformsophostest12"
        Enviroment="Dev"
    }
}
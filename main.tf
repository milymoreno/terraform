data "aws_vpc" "terraform" {
  default = false
 # id = var.vpc_id
}


resource "aws_subnet" "subnet1" {
    vpc_id            = data.aws_vpc.terraform.id
    availability_zone = "us-west-1a" # "us-east-1"
    cidr_block        = cidrsubnet(data.aws_vpc.terraform.cidr_block, 4, 1)#"10.0.0.0/16"
    #instance_tenancy  = "default"

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
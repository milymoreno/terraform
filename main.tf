

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
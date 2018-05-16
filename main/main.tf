provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {}
}

resource "aws_s3_bucket" "front_end_bucket" {
  bucket = "goflixyourself.com"
  acl    = "public-read"

  policy = "${file("policy.json")}"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

resource "aws_s3_bucket" "front_end_www_bucket" {
  bucket = "www.goflixyourself.com"
  acl    = "public-read"

  website {
    redirect_all_requests_to = "goflixyourself.com"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  alias = "default"
  region = "us-east-1"
}

provider "aws" {
  alias = "eu-west"
  region = "eu-west-1"
}

provider "aws" {
  alias = "eu-north"
  region = "eu-north-1"
}

provider "aws" {
  alias = "eu-central"
  region = "eu-central-1"
}

locals {
  us_east_1_buckets = {
    "acsl-pkgs": {}
    "acsl.se": {}
    "acsl-pkgs-private": {}
    "acsl.se-logs": {}
    "appliedcompscilab.com": {}
    "articles.nhmtech.com": {
      acl = "public-read"
    }
    "blog.appliedcompscilab.com": {
      acl = "public-read"
    }
    "colin.acsl.se": {}
    "drcolincoder.com": {}
    "drcolincoder.com-logs": {}
    "mindthy.acsl.se": {}
    "test.packagedepot.io": {}
    "whatflagisthiscountry.com": {}
    "whatflagisthiscountry.com-logs": {}
    "yeet2gether.acsl.se": {}
  }

  eu_west_1_buckets = {
    "acompscilab.com": {}
    "photodujour.net": {}
  }

  eu_north_1_buckets = {
    "acsl-test-bucket": {}
    "countdown.acsl.se": {}
    "stats-test.packagedepot.io": {}
    "stats-test.packagedepot.io-logs": {}
  }

  eu_central_1_buckets = {
    "covid19.acsl.se": {}
    "covid19.acsl.se-logs": {}
    "dq.acsl.se": {}
    "dq.acsl.se-logs": {}
    "masterpasswordgenerator.com": {}
    "masterpasswordgenerator.com-logs": {}
    "ndb.acsl.se": {}
    "yamldiff.com": {}
    "yamldiff.com-logs": {}
  }
}

resource "aws_s3_bucket" "us-east-1-buckets" {
  for_each = local.us_east_1_buckets

  bucket = each.key
}

resource "aws_s3_bucket" "eu-west-1-buckets" {
  for_each = local.eu_west_1_buckets

  provider = aws.eu-west
  bucket = each.key
}

resource "aws_s3_bucket" "eu-north-1-buckets" {
  for_each = local.eu_north_1_buckets

  provider = aws.eu-north
  bucket = each.key
}

resource "aws_s3_bucket" "eu-central-1-buckets" {
  for_each = local.eu_central_1_buckets

  provider = aws.eu-central
  bucket = each.key
}

# ACL
resource "aws_s3_bucket_acl" "acl-us-east-1-buckets" {
  for_each = local.us_east_1_buckets

  bucket = aws_s3_bucket.us-east-1-buckets[each.key].id

  acl = lookup(each.value, "acl", null)
}

resource "aws_s3_bucket_acl" "acl-eu-west-1-buckets" {
  for_each = local.eu_west_1_buckets

  provider = aws.eu-west
  bucket = aws_s3_bucket.eu-west-1-buckets[each.key].id

  acl = lookup(each.value, "acl", null)
}

resource "aws_s3_bucket_acl" "acl-eu-north-1-buckets" {
  for_each = local.eu_north_1_buckets

  provider = aws.eu-north
  bucket = aws_s3_bucket.eu-north-1-buckets[each.key].id

  acl = lookup(each.value, "acl", null)
}

resource "aws_s3_bucket_acl" "acl-eu-central-1-buckets" {
  for_each = local.eu_central_1_buckets

  provider = aws.eu-central
  bucket = aws_s3_bucket.eu-central-1-buckets[each.key].id

  acl = lookup(each.value, "acl", null)
}

terraform {
  backend "s3" {
    bucket = "terrateam-test-bucket"
    key    = "terrateam/state/test-basic-0045"
    region = "us-east-1"
  }
}

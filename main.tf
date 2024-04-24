resource "aws_s3_bucket" "resourcely-testing_AjwfG5SeF48i43PZ" {
  bucket = "resourcely-testing"
}

resource "aws_s3_bucket_public_access_block" "resourcely-testing_AjwfG5SeF48i43PZ" {
  bucket                  = aws_s3_bucket.resourcely-testing_AjwfG5SeF48i43PZ.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-testing_AjwfG5SeF48i43PZ" {
  bucket = aws_s3_bucket.resourcely-testing_AjwfG5SeF48i43PZ.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-testing_AjwfG5SeF48i43PZ" {
  bucket = aws_s3_bucket.resourcely-testing_AjwfG5SeF48i43PZ.id

  versioning_configuration {
    status = "Enabled"
  }
}

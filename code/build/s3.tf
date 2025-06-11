provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a1904298-80ad-42aa-9a8a-51da4b1a393d"
    git_commit           = "7dfdcb23ca6004d3af83482ccbff68001d632aea"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:27:14"
    git_last_modified_by = "35240234+defmania@users.noreply.github.com"
    git_modifiers        = "35240234+defmania"
    git_org              = "defmania"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "db55b84a-668d-4444-91fc-7a76a3c440e1"
    git_commit           = "17ac2a11db4e882eaa8eddf36551d48899202678"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-05-08 16:26:56"
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

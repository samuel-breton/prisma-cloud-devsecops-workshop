provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "9227caa360202bb971f65b30308d7cd1b5e51353"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:44:05"
    git_last_modified_by = "35827261+samuel-breton@users.noreply.github.com"
    git_modifiers        = "35827261+samuel-breton"
    git_org              = "samuel-breton"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "2469f7a1-c8d3-48ab-9042-6108153d2a21"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

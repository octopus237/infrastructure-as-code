resource "aws_s3_bucket" "remote-state" {
  bucket = "tfm-state-bucket"
  tags = {
    Name        = "Dev-Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "remote-state-versioning" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "dynamo-table" {
  name         = "tfstate-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
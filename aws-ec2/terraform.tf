terraform {
  backend "s3" {
    bucket         = "tfm-state-bucket"
    region         = "us-west-2"
    key            = "terraform.tfstate"
    dynamodb_table = "tfstate-locking"
  }
}

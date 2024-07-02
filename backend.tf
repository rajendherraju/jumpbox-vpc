terraform {
  backend "s3" {
    bucket = "jump-s3-bucket-1"
    key    = "path/to/terraform.tfstate"
    region = "us-east-1"
  }
}

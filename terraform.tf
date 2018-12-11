provider "aws" {
  region                  = "eu-west-3"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "aws"
}

terraform {
  required_version = "<= 0.11.10"

  backend "s3" {
    bucket  = "terraformstateboobox"
    key     = "key"
    region  = "eu-west-3"
    profile = "aws"
  }
}

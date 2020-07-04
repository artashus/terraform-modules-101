terraform {
  required_version = "=0.12.26"
}

provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
    alias = "usa"
    region = "us-west-1"
}
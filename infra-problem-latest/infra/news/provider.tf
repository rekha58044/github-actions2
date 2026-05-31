# Setup our aws provider
variable "region" {
  default = "eu-west-1"
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    region = "eu-west-1"
    key = "news/terraform.tfstate"
    encrypt        = true
    use_lockfile   = true # Enables S3 native locking
  }
}

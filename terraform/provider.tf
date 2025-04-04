terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket       = "acit4640-lab-backend-bucket"
    key          = "terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true # (optional, enable server side encryption)
    use_lockfile = true # (optional, store lock file in S3 bucket)
  }

}

provider "aws" {
  region = "us-west-2"
}
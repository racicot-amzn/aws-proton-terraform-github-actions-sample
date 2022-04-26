/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:service/scheduled-lambda-svc/pipeline

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }

  backend "s3" {
    bucket = "racicot-proton-test-nrt"
    region = "ap-northeast-1"
    key    = "scheduled-lambda-svc-pipeline.state"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      service = var.service.name
    }
  }
}

variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}
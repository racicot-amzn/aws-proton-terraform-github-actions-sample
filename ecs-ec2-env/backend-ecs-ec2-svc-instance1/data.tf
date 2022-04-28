/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:service/backend-ecs-ec2-svc/service-instance/instance1

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

variable "task_sizes" {
  default = {
    x-small = { cpu = 256, memory = 512 }
    small   = { cpu = 512, memory = 1024 }
    medium  = { cpu = 1024, memory = 2048 }
    large   = { cpu = 2048, memory = 4096 }
    x-large = { cpu = 4096, memory = 8192 }
  }
}
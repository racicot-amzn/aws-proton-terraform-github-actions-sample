/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:service/scheduled-lambda-svc/service-instance/my-instance

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

locals {
  account_id                = data.aws_caller_identity.current.account_id
  region                    = data.aws_region.current.id
  partition                 = data.aws_partition.current.id
  using_default_lambda_code = try(var.service_instance.inputs.code_bucket, null) == null ? true : false
}
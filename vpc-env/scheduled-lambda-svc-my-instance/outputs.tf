/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:service/scheduled-lambda-svc/service-instance/my-instance

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "lambda_function" {
  value = aws_lambda_function.function.function_name
}

output "lambda_runtime" {
  value = var.service_instance.inputs.lambda_runtime
}
/*
This file is no longer managed by AWS Proton. The associated resource has been deleted in Proton.
*/

output "lambda_function" {
  value = aws_lambda_function.function.function_name
}

output "lambda_runtime" {
  value = var.service_instance.inputs.lambda_runtime
}
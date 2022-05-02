/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:service/worker-lambda-svc/service-instance/my-instance

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "LambdaFunctionName" {
  value = aws_lambda_function.lambda_function.function_name
}

output "SqsQueueName" {
  value = aws_sqs_queue.processing_queue.name
}

output "SqsQueueArn" {
  value = aws_sqs_queue.processing_queue.arn
}

output "SqsQueueUrl" {
  value = aws_sqs_queue.processing_queue.url
}

output "LambdaRuntime" {
  value = aws_lambda_function.lambda_function.runtime
}

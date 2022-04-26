/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:service/scheduled-lambda-svc/service-instance/my-instance

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

data "archive_file" "inline_lambda_code" {
  output_path = "lambda_code.zip"
  type        = "zip"

  source {
    filename = "index.js"
    content  = <<-EOF
    exports.handler = async (event, context) => {
      try {
        // Log event and context object to CloudWatch Logs
        console.log("Event: ", JSON.stringify(event, null, 2));
        console.log("Context: ", JSON.stringify(context, null, 2));
        return {};
      } catch (error) {
        console.error(error);
        throw new Error(error);
      }
    };
EOF
  }
}
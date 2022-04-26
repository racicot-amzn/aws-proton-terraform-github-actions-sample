/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:environment/vpc-env

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_one_id" {
  value = module.vpc.public_subnets[0]
}

output "public_subnet_two_id" {
  value = module.vpc.public_subnets[1]
}

output "private_subnet_one_id" {
  value = module.vpc.private_subnets[0]
}

output "private_subnet_two_id" {
  value = module.vpc.private_subnets[1]
}

output "vpc_default_security_group" {
  value = module.vpc.default_security_group_id
}

output "vpc_connector_arn" {
  value = aws_apprunner_vpc_connector.connector.id
}

output "sns_topic_name" {
  value = aws_sns_topic.ping_topic.name
}

output "sns_region" {
  value = local.region
}

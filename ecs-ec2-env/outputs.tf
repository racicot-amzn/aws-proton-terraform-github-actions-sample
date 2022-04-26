/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:074207182078:environment/ecs-ec2-env

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "Cluster" {
  value = aws_ecs_cluster.cluster.name
}

output "ClusterArn" {
  value = aws_ecs_cluster.cluster.arn
}

output "ServiceTaskDefExecutionRole" {
  value = aws_iam_role.service-task-def-execution-role.arn
}

output "SNSTopic" {
  value = aws_sns_topic.ping_topic.arn
}

output "SNSTopicName" {
  value = aws_sns_topic.ping_topic.name
}

output "SNSRegion" {
  value = local.region
}

output "VPC" {
  value = module.vpc.vpc_id
}

output "PublicSubnet1" {
  value = module.vpc.public_subnets[0]
}

output "PublicSubnet2" {
  value = module.vpc.public_subnets[1]
}

output "PrivateSubnet1" {
  value = module.vpc.private_subnets[0]
}

output "PrivateSubnet2" {
  value = module.vpc.private_subnets[1]
}

output "CloudMapNamespaceId" {
  value = aws_service_discovery_private_dns_namespace.cloud_map_namespace.id
}

output "ECSHostSecurityGroup" {
  value = aws_security_group.ecs_host_security_group.arn
}
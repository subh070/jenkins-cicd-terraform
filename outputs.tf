output "instance_id" {
  value = length(module.ec2) > 0 ? module.ec2[0].instance_id : null
}

output "public_ip" {
  value = length(module.ec2) > 0 ? module.ec2[0].public_ip : null
}

output "public_dns" {
  value = length(module.ec2) > 0 ? module.ec2[0].public_dns : null
}

output "s3_bucket_name" {
  value = length(module.s3) > 0 ? module.s3[0].bucket_name : null
}

output "s3_bucket_arn" {
  value = length(module.s3) > 0 ? module.s3[0].bucket_arn : null
}
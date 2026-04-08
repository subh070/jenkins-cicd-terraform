locals {
  create_ec2 = var.stage == "ec2" || var.stage == "all"
  create_s3  = var.stage == "s3" || var.stage == "all"
}

module "ec2" {
  source = "./modules/ec2"
  count  = local.create_ec2 ? 1 : 0

  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = "Terraform-EC2-Jenkins"
}

module "s3" {
  source = "./modules/s3"
  count  = local.create_s3 ? 1 : 0

  bucket_name   = var.s3_bucket_name
  force_destroy = var.s3_force_destroy
}
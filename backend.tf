terraform {
  backend "s3" {
    bucket       = "terraform-state-batch4"
    key          = "ec2/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
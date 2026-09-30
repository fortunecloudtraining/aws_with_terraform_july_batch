terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-july-batch-fctp" # this must be your s3 bucket name
    key    = "security/fctp/dev/ec2/terraform.tfstate"
    region = "ap-south-1"
  }
}

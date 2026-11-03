terraform {
  backend "s3" {

    bucket = "terraform-remote-backend-july-batch-fctp-v5" # this must be your s3 bucket name
    key    = "security/fctp/dev/oidc/terraform.tfstate"
    region = "ap-south-1"
  }
}

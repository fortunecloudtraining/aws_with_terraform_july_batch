module "vpc_module" {
  source = "../../../../modules/networking/VPC"
  aws_vpc_cidr = var.aws_vpc_cidr
  aws_region = var.aws_region
  environment = var.environment
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  public_subnet_01_availability_zone = var.public_subnet_01_availability_zone
  public_subnet_01_cidr = var.public_subnet_01_cidr
  private_subnet_01_cidr = var.private_subnet_01_cidr
  private_subnet_01_availability_zone = var.private_subnet_01_availability_zone
}
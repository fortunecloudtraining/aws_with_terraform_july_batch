variable "aws_region" {
  type = string
}

variable "aws_vpc_cidr" {
  type = string
}

variable "environment" {
  type = string

}

variable "enable_dns_hostnames" {
  type = bool
}
variable "enable_dns_support" {
  type = bool
}

variable "public_subnet_01_cidr" {
  type = string
}

variable "public_subnet_01_availability_zone" {
  type = string
}

variable "private_subnet_01_cidr" {
    type = string
}

variable "private_subnet_01_availability_zone" {
    type = string
}
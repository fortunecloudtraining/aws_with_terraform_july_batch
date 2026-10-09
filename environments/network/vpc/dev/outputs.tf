output "vpc_id" {

  value = module.aws_vpc.vpc_id
}

output "public_subnet_ids" {

  value = module.aws_vpc.public_subnet_ids
}

output "private_subnet_ids" {

  value = module.aws_vpc.private_subnet_ids
}

output "nat_gateway_ids" {

  value = module.aws_vpc.nat_gateway_ids
}

# output "eks_cluster_sg_id" {

#   value = module.aws_vpc.eks_cluster_sg_id
# }

# output "eks_node_sg_id" {

#   value = module.aws_vpc.eks_node_sg_id
# }
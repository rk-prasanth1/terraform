output "public_subnets_id" {
    value = module.vpc.public_subnets
}

output "private_subnets_id" {
    value = module.vpc.private_subnets

}

output "igw_id" {
    value = module.vpc.igw_id

}
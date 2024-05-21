# Output the VCN ID
output "vcn_id" {
  value = module.vcn.vcn_id
}

# Output the subnet IDs
output "subnet_ids" {
  value = module.vcn.subnet_ids
}

# Output the IGW ID
output "igw_id" {
  value = module.vcn.igw_id
}

# Output the NAT Gateway ID
output "natgw_id" {
  value = module.vcn.natgw_id
}

# Output the Route Table ID
output "rt_id" {
  value = module.vcn.rt_id
}

# Output the instance ID
output "instance_id" {
  value = module.instance.instance_id
}

# Output the instance public IP
output "instance_public_ip" {
  value = module.instance.instance_public_ip
}
# Call the VCN module
module "vcn" {
  source = "./vcn_module"

  compartment_ocid = var.compartment_ocid
  vcn_display_name = var.vcn_display_name
  vcn_cidr         = var.vcn_cidr
  igw_display_name = var.igw_display_name
  natgw_display_name = var.natgw_display_name
  rt_display_name  = var.rt_display_name
  subnets          = var.subnets
}

# Call the instance module
  module "instance" {
  source = "./instance_module"

  compartment_ocid     = var.compartment_ocid
  availability_domain  = var.availability_domain
  subnet_id            = module.vcn.subnet_ids["subnet1"]
  instance_display_name = var.instance_display_name
  shape                = var.instance_shape
  # image_ocid           = var.image_ocid
  ssh_public_key       = var.ssh_public_key
}
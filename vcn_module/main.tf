resource "oci_core_vcn" "vcn" {
  display_name   = var.vcn_display_name
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_ocid
}

resource "oci_core_internet_gateway" "igw" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = var.igw_display_name
  enabled        = true
}

resource "oci_core_nat_gateway" "natgw" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = var.natgw_display_name
}

resource "oci_core_route_table" "rt" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = var.rt_display_name

  route_rules {
    destination = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.igw.id
  }
}

resource "oci_core_subnet" "subnet" {
  for_each = var.subnets

  display_name       = each.value.display_name
  vcn_id             = oci_core_vcn.vcn.id
  cidr_block         = each.value.cidr_block
  compartment_id     = var.compartment_ocid
  availability_domain = each.value.availability_domain
  dns_label          = each.value.dns_label
  route_table_id     = oci_core_route_table.rt.id
}

# Outputs
output "vcn_id" {
  value = oci_core_vcn.vcn.id
}

output "subnet_ids" {
  value = { for k, v in oci_core_subnet.subnet : k => v.id }
}

output "igw_id" {
  value = oci_core_internet_gateway.igw.id
}

output "natgw_id" {
  value = oci_core_nat_gateway.natgw.id
}

output "rt_id" {
  value = oci_core_route_table.rt.id
}

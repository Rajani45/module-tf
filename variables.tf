variable "tenancy_ocid" {
  description = "The OCID of your tenancy"
  type        = string
}

variable "user_ocid" {
  description = "The OCID of the user"
  type        = string
}

variable "fingerprint" {
  description = "The fingerprint for the API key"
  type        = string
}

variable "private_key_path" {
  description = "The path to the private key for the API key"
  type        = string
}

variable "region" {
  description = "The OCI region"
  type        = string
}

variable "compartment_ocid" {
  description = "The OCID of the compartment"
  type        = string
}

variable "vcn_display_name" {
  description = "The display name of the VCN"
  type        = string
}

variable "vcn_cidr" {
  description = "The CIDR block for the VCN"
  type        = string
}

variable "igw_display_name" {
  description = "The display name of the Internet Gateway"
  type        = string
}

variable "natgw_display_name" {
  description = "The display name of the NAT Gateway"
  type        = string
}

variable "rt_display_name" {
  description = "The display name of the Route Table"
  type        = string
}

variable "subnets" {
  description = "A map of subnets to create"
  type = map(object({
    display_name        = string
    cidr_block          = string
    availability_domain = string
    dns_label           = string
  }))
}

variable "availability_domain" {
  description = "The availability domain to launch the instance in"
  type        = string
}

variable "instance_display_name" {
  description = "The display name of the instance"
  type        = string
}

variable "instance_shape" {
  description = "The shape of the instance"
  type        = string
}

variable "image_ocid" {
  description = "The OCID of the image to use for the instance"
  type        = string
}

variable "ssh_public_key" {
  description = "Path to the SSH public key"
  type        = string
}
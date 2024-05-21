variable "compartment_ocid" {
  description = "The OCID of the compartment where the instance will be created"
  type        = string
}

variable "availability_domain" {
  description = "The availability domain to launch the instance in"
  type        = string
}

variable "subnet_id" {
  description = "The subnet OCID where the instance will be created"
  type        = string
}

variable "instance_display_name" {
  description = "The display name of the instance"
  type        = string
}

variable "shape" {
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
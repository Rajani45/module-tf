resource "oci_core_instance" "instance" {
  display_name       = var.instance_display_name
  compartment_id     = var.compartment_ocid
  availability_domain = var.availability_domain
  shape              = var.shape

  create_vnic_details {
    subnet_id = var.subnet_id
  }

  source_details {
    source_type = "image"
    source_id   = var.image_ocid
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key)
  }
}

# Outputs
output "instance_id" {
  value = oci_core_instance.instance.id
}

output "instance_public_ip" {
  value = oci_core_instance.instance.public_ip
}
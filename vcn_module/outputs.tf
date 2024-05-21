output "instance_id" {
  description = "The ID of the instance"
  value       = oci_core_instance.instance.id
}

output "instance_public_ip" {
  description = "The public IP of the instance"
  value       = oci_core_instance.instance.public_ip
}
#Instancia
output "vmfoundry_public_ip" {
  description = "La dirección IP pública de la instancia vmfoundry"
  value       = oci_core_instance.vmfoundry.public_ip
}

output "vmfoundry_instance_id" {
  value = oci_core_instance.vmfoundry.id
}

output "vmfoundry_instance_state" {
  value = oci_core_instance.vmfoundry.state
}

#VNC
output "vcn_id" {
  value = oci_core_vcn.fvtt_vcn.id
}

output "vcn_cidr_block" {
  value = oci_core_vcn.fvtt_vcn.cidr_block
}

#Subnet
output "subnet_id" {
  value = oci_core_subnet.fvtt_subnet.id
}

output "subnet_cidr_block" {
  value = oci_core_subnet.fvtt_subnet.cidr_block
}


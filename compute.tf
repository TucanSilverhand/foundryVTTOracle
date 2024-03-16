resource "oci_core_instance" "vmfoundry" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  shape               = "VM.Standard.A1.Flex"
  display_name        = "vmfoundry"

  create_vnic_details {
    subnet_id        = oci_core_subnet.fvtt_subnet.id
    assign_public_ip = true
  }

  source_details {
    source_type = "image"
    source_id    = var.ubuntu_image_id
  }

  shape_config {
    ocpus       = 4
    memory_in_gbs = 24
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
  }
}

resource "oci_core_volume" "fvtt_volumen" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = "fvtt_volumen"
  size_in_gbs         = 200
}

resource "oci_core_volume_attachment" "fvtt_volumen_attachment" {
  attachment_type = "iscsi"
  instance_id     = oci_core_instance.vmfoundry.id
  volume_id       = oci_core_volume.fvtt_volumen.id
}

resource "oci_core_vcn" "fvtt_vcn" {
  compartment_id = var.compartment_id
  cidr_block     = "10.0.0.0/16"
  display_name   = "fvtt_vcn"
}

resource "oci_core_subnet" "fvtt_subnet" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.fvtt_vcn.id
  cidr_block     = "10.0.1.0/24"
  display_name   = "fvtt_subnet"
  dns_label      = null

  route_table_id = oci_core_route_table.fvtt_route_table.id
  security_list_ids = [oci_core_vcn.fvtt_vcn.default_security_list_id]
}

resource "oci_core_internet_gateway" "fvtt_internet_gateway" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.fvtt_vcn.id
  display_name   = "fvtt_internet_gateway"
}

resource "oci_core_route_table" "fvtt_route_table" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.fvtt_vcn.id
  display_name   = "fvtt_route_table"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.fvtt_internet_gateway.id
  }
}

resource "oci_core_security_list" "fvtt_security_list" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.fvtt_vcn.id
  display_name   = "fvtt_security_list"

  egress_security_rules {
    protocol = "all"
    destination = "0.0.0.0/0"
  }

  ingress_security_rules {
    protocol = "6"
    source = "0.0.0.0/0"
    tcp_options {
      min = 22
      max = 22
    }
  }

  ingress_security_rules {
    protocol = "6"
    stateless = true
    source = "0.0.0.0/0"
    tcp_options {
      min = 80
      max = 80
    }
  }

  ingress_security_rules {
    protocol = "6"
    stateless = true
    source = "0.0.0.0/0"
    tcp_options {
      min = 443
      max = 443
    }
  }

  ingress_security_rules {
    protocol = "6"
    stateless = true
    source = "0.0.0.0/0"
    tcp_options {
      min = 30000
      max = 30000
    }
  }
}


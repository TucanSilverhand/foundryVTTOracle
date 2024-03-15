variable "tenancy_ocid" {
  description = "El OCID de tu tenencia en Oracle Cloud."
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaXXXXXXXXXXa3wsbpw4r4gnldgzXXXXXXXXXX7ibozkcmwlchksxe3lsa"
}

variable "user_ocid" {
  description = "El OCID del usuario que interactuará con Oracle Cloud."
  type        = string
  default     = "ocid1.user.oc1..aaaaaaXXXXXXXXXXrpamush4g36p6tsvXXXXXXXXXX2aevc7xol435jm5omq"
}

variable "fingerprint" {
  description = "La huella digital de la clave pública API del usuario."
  type        = string
  default     = "d5:4XXXXXXXXXX:2c:c6:a7:7e:d8:eXXXXXXXXXX:04:6b"
}

variable "private_key_path" {
  description = "La ruta local al archivo de la clave privada API del usuario."
  type        = string
  default     = "./XXXXXXXXXXXXXXXXXXXX_2024-03-12T21_45_30.198Z.pem"
}

variable "region" {
  description = "La región de Oracle Cloud donde se desplegarán los recursos."
  type        = string
  default     = "eu-madrid-1"
}

variable "compartment_id" {
  description = "El OCID del compartimiento donde se desplegarán los recursos."
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaXXXXXXXXXXa3wsbpw4r4gnldgzXXXXXXXXXX7ibozkcmwlchksxe3lsa"
}

variable "availability_domain" {
  description = "El Availability Domain donde se desplegará la instancia."
  type        = string
  default     = "XXXXXXXXXXDRID-1-AD-1"
}

variable "ubuntu_image_id" {
  description = "El OCID de la imagen de Ubuntu a usar para la instancia."
  type        = string
  default     = "ocid1.image.oc1.eu-madrid-1.aaaaaaaapwi7o7bimzxfzidwhsp3a6mcf76v45ydhdgrsva6lu4d5nbj6fkq"
}

variable "ssh_public_key_path" {
  description = "Ruta al archivo de tu clave pública SSH."
  type        = string
  default     = "/Users/xxxxxxxxxx/Data/XXXXXXXXXX/Configurations/ssh-keys/XXXXXXXX.pub"
}

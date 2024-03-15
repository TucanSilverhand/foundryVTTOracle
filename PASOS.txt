1-Voy a Identity&Security
2-Pulso en Identity
3-Elijo en Compartement el que pone "root"
4-A la derecha en QuickLinks pulso en Users
5-Veo mi usuario creado con mi correo electronico
6-Pulso en el
7-Copio el OICD: ocid1.user.oc1..aaaaaaXXXXXXXXXXrpamush4g36p6tsvXXXXXXXXXX2aevc7xol435jm5omq
8-Pulso en API Keys y Add API Key
9-Download private key and public key (Guardar para siempre)
10-Pulsamos en Add
11-Copio la info q me muestra: (Ira si la necesito en un ∞/.oci/config)
[DEFAULT]
user=ocid1.user.oc1..aaaaaaXXXXXXXXXXrpamush4g36p6tsvXXXXXXXXXX2aevc7xol435jm5omq
fingerprint=d5:4XXXXXXXXXX:2c:c6:a7:7e:d8:eXXXXXXXXXX:04:6b
tenancy=ocid1.tenancy.oc1..aaaaXXXXXXXXXXa3wsbpw4r4gnldgzXXXXXXXXXX7ibozkcmwlchksxe3lsa
region=eu-madrid-1
key_file=<path to your private keyfile> # TODO
12-Creamos el primer archivo de prueba (main.tf)
provider "oci" {
  tenancy_ocid     = "tu_tenancy_ocid_aquí"
  user_ocid        = "tu_user_ocid_aquí"
  fingerprint      = "tu_huella_digital_aquí"
  private_key_path = "ruta/a/tu/llave_privada.pem"
  region           = "tu_región_aquí"
}
13-Para el Compartiment ID, desde Identity vas a Compartiment, hay uno creado por defecto, pulsas en el y podras copiar el ID.
14-En buscar, buscas: Tenancy details y desde ahi sacas el tenancy_oicd
NO HACE FALTA: 15-Ejecutando: oci iam availability-domain list obtenemos el nombre del availability domain


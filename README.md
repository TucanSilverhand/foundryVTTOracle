# ELEMENTOS NECESARIOS

1. Instalar terraform (linux, mac, windows). Busca en google como hacerlo. Dificultad 0.
2. Crear una cuenta en OracleCloud. Busca en google si no consigues hacerlo. Dificultad 0.

# PASOS A SEGUIR PARA UTILIZAR EL MODULO

1. Voy a Identity&Security
2. Pulso en Identity
3. Elijo en Compartement el que pone "root"
4. A la derecha en QuickLinks pulso en Users
5. Veo mi usuario creado con mi correo electronico
6. Pulso en el
7. Copio el OICD: ocid1.user.oc1..aaaaaaXXXXXXXXXXrpamush4g36p6tsvXXXXXXXXXX2aevc7xol435jm5omq
8. Pulso en API Keys y Add API Key
9. Download private key and public key (Guardar para siempre)
10. Pulsamos en Add
11. Copio la info q me muestra: (Ira si la necesito en un ∞/.oci/config)

```bash
[DEFAULT]
user=ocid1.user.oc1..aaaaaaXXXXXXXXXXrpamush4g36p6tsvXXXXXXXXXX2aevc7xol435jm5omq
fingerprint=d5:4XXXXXXXXXX:2c:c6:a7:7e:d8:eXXXXXXXXXX:04:6b
tenancy=ocid1.tenancy.oc1..aaaaXXXXXXXXXXa3wsbpw4r4gnldgzXXXXXXXXXX7ibozkcmwlchksxe3lsa
region=eu-madrid-1
key_file=<path to your private keyfile> # TODO
```

12. **NO HACE FALTA:** Creamos el primer archivo de prueba (main.tf)

```bash
provider "oci" {
  tenancy_ocid     = "tu_tenancy_ocid_aquí"
  user_ocid        = "tu_user_ocid_aquí"
  fingerprint      = "tu_huella_digital_aquí"
  private_key_path = "ruta/a/tu/llave_privada.pem"
  region           = "tu_región_aquí"
}
```

13. Para el Compartiment ID, desde Identity vas a Compartiment, hay uno creado por defecto, pulsas en el y podras copiar el ID.
14. En buscar, buscas: Tenancy details y desde ahi sacas el tenancy_oicd
15. **NO HACE FALTA:** oci iam availability-domain list obtenemos el nombre del availability domain
16. Creamos un fichero que tenga las variables que hemos recogido, se va a llamar mivars.tfvars. Rellenalo con los datos que tenemos.

```bash
tenancy_ocid = "ocid1.tenancy.oc1..aaaaXXXXXXXXXXa3wsbpw4r4gnldgzXXXXXXXXXX7ibozkcmwlchksxe3lsa"
user_ocid = "ocid1.user.oc1..aaaaaaXXXXXXXXXXrpamush4g36p6tsvXXXXXXXXXX2aevc7xol435jm5omq"
fingerprint = "d5:4XXXXXXXXXX:2c:c6:a7:7e:d8:eXXXXXXXXXX:04:6b"
private_key_path = "./XXXXXXXXXXXXXXXXXXXX_2024-03-12T21_45_30.198Z.pem"
region = "eu-madrid-1"
compartment_id = "ocid1.tenancy.oc1..aaaaXXXXXXXXXXa3wsbpw4r4gnldgzXXXXXXXXXX7ibozkcmwlchksxe3lsa"
availability_domain = "XXXXXXXXXXDRID-1-AD-1"
ubuntu_image_id = "ocid1.image.oc1.eu-madrid-1.aaaaaaaapwi7o7bimzxfzidwhsp3a6mcf76v45ydhdgrsva6lu4d5nbj6fkq"
ssh_public_key_path = "/Users/xxxxxxxxxx/Data/XXXXXXXXXX/Configurations/ssh-keys/XXXXXXXX.pub"
```

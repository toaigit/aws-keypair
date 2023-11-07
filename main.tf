resource "tls_private_key" "mykeypair" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.mykeypair.public_key_openssh
}
output "public_key" {
      value = tls_private_key.mykeypair.public_key_openssh
      }

output "private_key" {
      value = tls_private_key.mykeypair.private_key_openssh
      sensitive = true
      }

# you can then get the public and private key as follows
#terraform output -raw public_key  > my_id_rsa.pub
#terraform output -raw private_key > my_id_rsa

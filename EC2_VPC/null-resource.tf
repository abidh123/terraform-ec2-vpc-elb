resource "null_resource" "name" {
  depends_on = [module.public-ec2-instance]
  connection {
    type = "ssh"
    host = aws_eip.bastion_eip.public_ip
    user = "ec2-user"
    password = ""
    private_key = file("../keyfile/commonkeypairs.pem")
  } 

 # Copies the terraform-key.pem file to /tmp/terraform-key.pem
  provisioner "file" {
    source      = "keyfile/commonkeypairs.pem"
    destination = "/tmp/commonkeypairs.pem"
  }  

# Using remote-exec provisioner fix the private key permissions on Bastion Host
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/commonkeypairs.pem"
    ]
  }  
  
}
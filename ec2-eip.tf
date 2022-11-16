resource "aws_eip" "bastion_eip" {
  depends_on = [module.public-ec2-instance]
  instance =  module.public-ec2-instance.id
  vpc = true
  }
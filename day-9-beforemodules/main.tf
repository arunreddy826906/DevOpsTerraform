resource "aws_instance" "dev" {
  ami=var.ami-id
  instance_type =var.instance-type
  key_name = var.key-name
  tags = {
    Name="moduleEc2"
  }
}
resource "aws_instance" "ec2" {
  ami=var.ami_id
  instance_type = var.instance2
  key_name = var.keyname
  tags = {
    Name="Terraform-Ec3"
  }
}
resource "aws_s3_bucket" "s3bucket" {
    bucket = "kbuck196"
  
}
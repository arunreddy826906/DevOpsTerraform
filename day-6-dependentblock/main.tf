resource "aws_instance" "ec2" {
  ami = "ami-013168dc3850ef002"
  instance_type = "t2.micro"
  key_name = "ArunDevOpsKeyPair"
  tags = {
    Name="NewEc2"
  }
}
resource "aws_s3_bucket" "s3" {
  bucket = "news3bucket826"
  depends_on = [ aws_instance.ec2 ]
}
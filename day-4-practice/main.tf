resource "aws_s3_bucket" "statefilebucket" {
  bucket = "statefilebucketarun"
}
terraform {
  backend "s3" {
    bucket = "statefilebucketarun"
    key    = "terraform.tfstate"
  }
}
resource "aws_instance" "newone" {
  ami = "ami-013168dc3850ef002"
  instance_type = "t2.micro"
  key_name = "ArunDevOpsKeyPair"
  tags = {
    Name="StateFileEc2"
  }
}

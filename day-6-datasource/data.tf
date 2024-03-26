data "aws_security_group" "sg" {
 id = "sg-0c24167eff8c8e37b"
}
data "aws_subnet" "sn" {
  id = "subnet-0a09a3eba51172901"
}
data "aws_ami" "ami" {
  owners = [ "amazon" ]
  most_recent = true
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
}

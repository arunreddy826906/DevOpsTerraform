

resource "aws_instance" "server" {
  ami = data.aws_ami.ami.id
  subnet_id = data.aws_subnet.sn.id
  instance_type = "t2.micro"
  tags = {
    Name="DataEc2"
  }
}
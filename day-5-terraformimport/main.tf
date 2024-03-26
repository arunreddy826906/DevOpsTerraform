resource "aws_instance" "import" {
  ami = "ami-013168dc3850ef002"
  instance_type = "t3.micro"
  subnet_id = "subnet-04507e99adfb86251"
  security_groups = [ aws_security_group.Cust1-SG.id ]
  associate_public_ip_address = true
  tags  = {
        "Name" = "ImportEc2" 
        }
}
resource "aws_security_group" "Cust1-SG" {
  name = "CustomSecurityGroup"
  description = "DemoSG"
  vpc_id = "vpc-0c6ca516d86bdbf77"
  ingress  {
    description="Demo"
    from_port=22
    to_port=22
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }
  ingress  {
    description="Demo1"
    from_port=80
    to_port=80
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }
}
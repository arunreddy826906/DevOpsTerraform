resource "aws_vpc" "CustomVPC" {
  cidr_block = "10.0.0.0/16"
tags = {
  Name="CustomVPC"
}
}
resource "aws_internet_gateway" "CustomIG" {
  tags = {
    Name="CustomIG"
  }
  vpc_id = aws_vpc.CustomVPC.id
}
resource "aws_subnet" "PublicNW" {
  vpc_id = aws_vpc.CustomVPC.id
  tags = {
    Name="Public-Subnet"
  }
  cidr_block="10.0.0.0/24"
}
resource "aws_route_table" "PublicRT" {
  tags = {
    Name="PublicRT"
  }
  vpc_id = aws_vpc.CustomVPC.id
  route {
    cidr_block="0.0.0.0/0"
    gateway_id = aws_internet_gateway.CustomIG.id
  }
  }
  resource "aws_route_table_association" "SubnetAssociation" {
    subnet_id = aws_subnet.PublicNW.id
    route_table_id = aws_route_table.PublicRT.id
  }
  #Launch Public Ec2
  resource "aws_instance" "publicEc2" {
    ami = "ami-013168dc3850ef002"
    instance_type = "t2.micro"
    key_name = "ArunDevOpsKeyPair"
    subnet_id = aws_subnet.PublicNW.id
    tags = {
      Name="Public-Ec2"
    }
  }

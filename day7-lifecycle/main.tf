resource "aws_instance" "life" {
  ami = "ami-013168dc3850ef002"
  instance_type = "t2.micro"
  key_name = "ArunDevOpsKeyPair"
  availability_zone = "ap-south-1b"
  tags = {
    Name="LifeCyleEc2"
  }
  #lifecycle {
   # prevent_destroy = true  #We cannnot destroy after we make this property as true
  #}
  #lifecycle {
   # ignore_changes = [ tags,instance_type ]
  #}
  lifecycle {
  create_before_destroy = true
  #prevent_destroy = true
  }
}
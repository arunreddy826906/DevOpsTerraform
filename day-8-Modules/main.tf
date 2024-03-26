module "ec2" {
  source = "../day-9-beforemodules"
  ami-id = "ami-007020fd9c84e18c7"
  #instance-type="t2.micro"
  key-name="ArunDevOpsKeyPair"
}
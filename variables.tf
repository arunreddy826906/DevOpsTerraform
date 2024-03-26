variable "ami_id" {
  type=string
  default = "ami-0ba259e664698cbfc"
}
variable "instance2" {
  type = string
  default = "t2.nano"
}
variable "keyname" {
  type = string
  default = "ArunDevOpsKeyPair"
}
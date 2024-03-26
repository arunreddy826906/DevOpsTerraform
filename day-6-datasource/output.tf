output "public-ip" {
  value = aws_instance.server.public_ip
}
output "private-ip" {
  value = aws_instance.server.private_ip
  sensitive = true
}
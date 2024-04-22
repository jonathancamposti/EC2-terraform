output "instance_ip_addr" {
  value = aws_instance.server.public_ip
}

output "instance_id" {
    value = aws_instance.server.id
}
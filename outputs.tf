output "instance_private_ip" {
  description = "Private Ip of the EC2 instance(s)"
  value       = aws_instance.l-server[*].private_ip

}

output "instance_public_ip" {
  description = "Public Ip of the EC2 instance(s)"
  value       = aws_instance.l-server[*].public_ip
}

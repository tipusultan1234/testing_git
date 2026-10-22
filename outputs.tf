output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.ubuntu_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ubuntu_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.ubuntu_server.public_dns
}

output "ami_id_used" {
  description = "AMI ID that was selected (latest Ubuntu 24.04 LTS)"
  value       = data.aws_ami.ubuntu.id
}

output "ami_name_used" {
  description = "AMI name that was selected"
  value       = data.aws_ami.ubuntu.name
}

output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ubuntu@${aws_instance.ubuntu_server.public_ip}"
}

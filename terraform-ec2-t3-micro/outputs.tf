
output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.this.id
}

output "instance_type" {
  description = "EC2 instance type"
  value       = aws_instance.this.instance_type
}

output "public_ip" {
  description = "EC2 public IP address"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "EC2 private IP address"
  value       = aws_instance.this.private_ip
}

output "availability_zone" {
  description = "EC2 availability zone"
  value       = aws_instance.this.availability_zone
}

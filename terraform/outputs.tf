output "public_ip" {
    value       = aws_instance.node_app.public_ip
    description = "Public IP of the EC2 instance"
}

output "instance_id" {
    value       = aws_instance.node_app.id
    description = "The ID of the EC2 instance"
}

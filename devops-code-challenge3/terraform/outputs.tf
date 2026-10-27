output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket created by Terraform"
  value       = aws_s3_bucket.app_bucket.bucket
}

output "web_url" {
  description = "URL of the hosted Hello World web page (available after the Ansible playbook runs)"
  value       = "http://${aws_instance.web.public_ip}"
}

output "ssh_command" {
  description = "Command to SSH into the instance using the generated key"
  value       = "ssh -i ansible/${var.project_name}-key.pem ubuntu@${aws_instance.web.public_ip}"
}

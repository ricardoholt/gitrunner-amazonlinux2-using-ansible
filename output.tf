output "EC2_ID_And_IP" {
  description = "Printing EC2-instance ID and Public IP"
  value       = { (aws_instance.Amazon_Linux2_Runner_Instance.id) : (aws_instance.Amazon_Linux2_Runner_Instance.public_ip) }
}
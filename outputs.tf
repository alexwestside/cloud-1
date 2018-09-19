
output "public_dns" {
  value = "${aws_instance.cloud-1.public_dns}"
}

output "ami" {
  value = "${aws_instance.cloud-1.ami}"
}

output "ids" {
  description = "List of IDs of instances"
  value       = "${aws_instance.cloud-1.id}"
}
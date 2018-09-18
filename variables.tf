variable "aws_region"  {
  description = "The AWS region to deploy into"
  default = "us-east-1"
}

variable "instance_name1" {
  description = "The Name tag to set for the EC2 Instance."
  default = "cloud1_2"
}

variable "instance_name2" {
  description = "The Name tag to set for the EC2 Instance."
  default = "cloud1_1"
}
//
//variable "instance_port" {
//  http = 80
//  https = 443
//}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}


variable ec2_instance_type {
  description = "The EC2 instance type to use"
  default = "t2.micro"
}

variable ec2_volume_size_root {
  description = "Volume size in GB"
  default = "2"
}

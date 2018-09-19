variable "aws_region"  {
  description = "The AWS region to deploy into"
  default = "us-west-2"
}

variable "instance_name1" {
  description = "The Name tag to set for the EC2 Instance."
  default = "cloud1_2"
}

variable "instance_name2" {
  description = "The Name tag to set for the EC2 Instance."
  default = "cloud1_1"
}

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

//variable "ami_type" {
//  type    = "map"
//  default = {
//    us-east-1      = "ami-04169656fea786776"
//    eu-west-1      = "ami-51537029"
//  }
//}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default = "10.0.0.0/24"
}
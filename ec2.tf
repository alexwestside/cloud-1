//# Create a VPC to launch our instances into
//resource "aws_vpc" "default" {
//  cidr_block = "10.0.0.0/16"
//}
//
//resource "aws_security_group" "default" {
//  name        = "cloud1_sg"
//  description = "cloud1_security_group"
//  vpc_id      = "${aws_vpc.default.id}"
//
//  # SSH access from anywhere
//  ingress {
//    from_port   = 22
//    to_port     = 22
//    protocol    = "tcp"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  # HTTP access from the VPC
//  ingress {
//    from_port   = 80
//    to_port     = 80
//    protocol    = "tcp"
//    cidr_blocks = ["10.0.0.0/16"]
//  }
//
//  # outbound internet access
//  egress {
//    from_port   = 0
//    to_port     = 0
//    protocol    = "-1"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//}

//
//resource "aws_instance" "cloud1_1" {
//  ami             = "${data.ami.ubuntu.id}"
//  instance_type   = "${var.ec2_instance_type}"
//
//  tags {
//    Name = "cloud1_1"
//  }
//}
//
//resource "aws_instance" "cloud1_2" {
//  ami             = "${data.ami.ubuntu.id}"
//  instance_type   = "${var.ec2_instance_type}"
//
//  tags {
//    Name = "cloud1_2"
//  }
//}

resource "aws_instance" "cloud1" {
  ami           = "ami-408c7f28"
  instance_type = "t1.micro"
}

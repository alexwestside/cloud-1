
//data "ami" "ubuntu" {
//  most_recent = true
//  owners      = ["099720109477"]
//
//  filter {
//    name   = "name"
//    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
//  }
//}


//resource "aws_ami" "ami1" {
//  name              = "ubuntu-xenial-encrypted-ami"
//  description       = "An encrypted root ami based off ${data.ami.ubuntu.id}"
//  source_ami_id     = "${data.ami.ubuntu.id}"
//  source_ami_region = "${var.aws_region}"
//  encrypted         = "true"
//
//  tags {
//    Name = "ubuntu-xenial-encrypted-ami"
//  }
//}
//
//resource "aws_ami" "ami2" {
//  name              = "ubuntu-xenial-encrypted-ami"
//  description       = "An encrypted root ami based off ${data.ami.ubuntu.id}"
//  source_ami_id     = "${data.ami.ubuntu.id}"
//  source_ami_region = "${var.aws_region}"
//  encrypted         = "true"
//
//  tags {
//    Name = "ubuntu-xenial-encrypted-ami"
//  }
//}
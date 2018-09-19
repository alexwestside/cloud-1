//# Create a VPC to launch our instances into
resource "aws_security_group" "web" {
  name = "vpc_web"
  description = "Allow incoming HTTP connections."

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = "${aws_vpc.default.id}"

  tags {
    Name = "Cloud-1"
  }
}

resource "aws_instance" "cloud-1" {
//  ami = "${lookup(var.ami_type, var.aws_region)}"
  ami = "${data.aws_ami.ubuntu.id}"
  availability_zone = "${var.aws_region}a"
  instance_type = "${var.ec2_instance_type}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  subnet_id = "${aws_subnet.us-west-2a-public.id}"
  associate_public_ip_address = true
  source_dest_check = false

  tags {
    Name = "Cloud-1 service"
  }
}

resource "aws_eip" "web-1" {
  instance = "${aws_instance.cloud-1.id}"
  vpc = true
}

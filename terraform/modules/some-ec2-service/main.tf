# Find the latest amazon linux 2 ami in the region
data "aws_ami" "amazon_linux_2_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

data "aws_default_tags" "this" {}

resource "aws_instance" "this" {
  ami           = data.aws_ami.amazon_linux_2_ami.id
  instance_type = "t3.micro"

  tags = {
    Name        = "${data.aws_default_tags.this.tags.Environment}-some-ec2-service",
    Application = "some-ec2-service"
  }
}

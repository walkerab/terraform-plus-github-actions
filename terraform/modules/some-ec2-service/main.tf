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

# resource "aws_instance" "this" {
#   ami           = data.aws_ami.amazon_linux_2_ami.id
#   instance_type = "t3.micro"

#   tags = {
#     Name = "some-ec2-service"
#   }
# }

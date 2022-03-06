# AWS EC2 Terraform Module
# Used to create a basic AWS instance given some parameters


resource "aws_instance" "this" {
    count = var.number_of_instances
    
    ami = data.aws_ami.ubuntu
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name,
        terraform = true, 
        cost_centre = var.cost_centre
  }

}

# Ubuntu is our AMI of choice
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
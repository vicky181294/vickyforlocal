terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "master" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"


  tags = {
    Name = "Ansible_master"
  }
}

resource "aws_instance" "slave1" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave1"
  }
}

resource "aws_instance" "slave2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave2"
  }
}

resource "aws_instance" "slave3" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave3"
  }
}

resource "aws_instance" "slave4" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave4"
  }
}

resource "aws_instance" "slave5" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave5"
  }
}

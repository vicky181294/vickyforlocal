terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "master" {
  ami           = ami-0e670eb768a5fc3d4
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"


  tags = {
    Name = "Ansible_master"
  }
}

resource "aws_instance" "slave" {
  ami           = ami-0e670eb768a5fc3d4
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave1"
  }
}

resource "aws_instance" "slave" {
  ami           = ami-0e670eb768a5fc3d4
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave2"
  }
}

resource "aws_instance" "slave" {
  ami           = ami-0e670eb768a5fc3d4
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave3"
  }
}

resource "aws_instance" "slave" {
  ami           = ami-0e670eb768a5fc3d4
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave4"
  }
}

resource "aws_instance" "slave" {
  ami           = ami-0e670eb768a5fc3d4
  instance_type = "t2.micro"
  key_name  =   "vigneshcv1812"
  

  tags = {
    Name = "Ansible_slave5"
  }
}

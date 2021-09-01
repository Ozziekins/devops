#Define keys and region
provider "aws" {
  access_key = var.access
  secret_key = var.secret
  region     = "us-east-2"
}

#Define variables
variable "access" {
  description = "access key variable"
}

variable "secret" {
  description = "secret key variable"
}

#Define ec2 instance 
resource "aws_instance" "instance1" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu-20.04"
  }
}

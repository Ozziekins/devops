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
  key_name = "devops"

  tags = {
    Name = "ubuntu-20.04"
  }
}

output "url_server" {
  value = "http://${aws_instance.instance1.public_dns}"
}

output "SSH-command" {
  value = "ssh -i ${aws_instance.instance1.key_name}.pem ubuntu@${aws_instance.instance1.public_dns}"
}

resource "aws_security_group" "main" {
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
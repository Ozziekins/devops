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

  security_groups = [aws_security_group.allow-rules.name]

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

resource "aws_security_group" "allow-rules" {
  name        = "allow_all_rules"
  description = "Allow inbound traffic from SSH and web"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 8020
    to_port     = 8020
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-rules"
  }
}

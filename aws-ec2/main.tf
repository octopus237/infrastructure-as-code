resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
  key_name               = aws_key_pair.dev-server.key_name

  tags = {
    Name        = "Dev-Server"
    Environment = "Dev"
  }
}

resource "aws_key_pair" "dev-server" {
  public_key = file(var.public_key)
  key_name   = "server-key"
}

resource "aws_security_group" "ssh-access" {
  name        = "ssh-access"
  description = "Allow ssh from internet"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

output "publicip" {
  value = aws_instance.app_server.public_ip
}
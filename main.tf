resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins-sg"
  description = "Allow Jenkins and SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
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

resource "aws_security_group" "app_sg" {
  name        = "app-sg"
  description = "Allow App and SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
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

resource "aws_instance" "jenkins_server" {
  ami                    = "ami-031d0b77d83155c8d"
  instance_type          = "t3.micro"
  key_name               = "devops-key"
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  tags = {
    Name = "Terraform-Jenkins-Server"
  }
}

resource "aws_instance" "app_server" {
  ami                    = "ami-031d0b77d83155c8d"
  instance_type          = "t3.small"
  key_name               = "devops-key"
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "Terraform-App-Server"
  }
}

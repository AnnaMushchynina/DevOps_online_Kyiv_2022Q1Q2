provider "aws" {
    region = "eu-west-3"
}

resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins_sg"
  description = "Allow Jenkins Traffic"
  

  ingress {
    description      = "Allow from Personal CIDR block"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow SSH from Personal CIDR block"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Jenkins SG"
  }
}

resource "aws_security_group" "in-ssh" {
  name = "allow-22-sg"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow Web Traffic"
  

  ingress {
    description      = "Allow from Personal CIDR block"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow SSH from Personal CIDR block"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Web SG"
  }
}

resource "aws_instance" "jenkins-main" {
    ami = "ami-0a21d1c76ac56fee7"
    instance_type = "t2.micro"
    key_name = "UbuntuParis"
    security_groups = [aws_security_group.jenkins_sg.name]

    tags = {
        Name = "JenkinsMain"
    }
}

resource "aws_instance" "jenkins-builder" {
  ami           = "ami-0a21d1c76ac56fee7"
  instance_type = "t2.micro"
  key_name      = "UbuntuParis"
  security_groups = ["${aws_security_group.in-ssh.name}"]
  tags = {
    Name = "JenkinsBuilder"
  }
  root_block_device {
    volume_size = 28
  }
}

resource "aws_instance" "web" {
    ami = "ami-0a21d1c76ac56fee7"
    instance_type = "t2.micro"
    key_name = "UbuntuParis"
    security_groups = [aws_security_group.web_sg.name]

    tags = {
        Name = "Web"
    }
}

resource "aws_eip" "j-main-eip" {
  instance = aws_instance.jenkins-main.id
  vpc      = true
}

resource "aws_eip" "j-builder-eip" {
  instance = aws_instance.jenkins-builder.id
  vpc      = true
}

resource "aws_eip" "web-eip" {
  instance = aws_instance.web.id
  vpc      = true
}
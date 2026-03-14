terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36.0"
    }
  }
}

resource "aws_ec2_host" "webapp_host" {
  availability_zone = "ap-southeast-2"
  instance_type     = "m3.micro"
  auto_placement    = "on"

  tags = {
    Name = "WebApp Host"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

locals {
  extra_tag = "extra-tag"
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "example" {
  for_each = var.service_names

  ami           = "ami-09f01249677701935" # Ubuntu 24.04 LTS (us-east-1)
  instance_type = "t2.micro"              # Gratis en el nivel gratuito de AWS
  subnet_id     = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.terraform-sg.security_group_id]

  tags = {
    extra_tag = local.extra_tag
    Name      = "EC2-${each.key}"
  }
}

resource "aws_cloudwatch_log_group" "ec2_log_group" {
  for_each = var.service_names

  tags = {
    Environment = "test"
    Service     = each.key
    Name        = "EC2-${each.key}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

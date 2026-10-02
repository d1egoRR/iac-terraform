terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "example" {
  count       = terraform.workspace == "prod" ? 2 : 1

  ami           = "ami-09f01249677701935" # Ubuntu 24.04 LTS (us-east-1)
  instance_type = "t2.micro"              # Gratis en el nivel gratuito de AWS

  tags = {
    env = terraform.workspace
    Name = format("%s-%s", terraform.workspace, count.index)
  }
}

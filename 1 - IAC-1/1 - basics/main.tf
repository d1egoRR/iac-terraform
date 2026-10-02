terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "example" {
  ami           = "ami-09f01249677701935" # Ubuntu 24.04 LTS (us-east-1)
  instance_type = "t2.micro"              # Gratis en el nivel gratuito de AWS
}

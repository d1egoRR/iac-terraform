module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "terraform-vp"
  cidr = "10.0.0.0/16"

  azs                  = ["us-east-1a", "us-east-1b", ]
  public_subnets       = ["10.0.101.0/24", "10.0.102.0/24"]
  enable_vpn_gateway   = false
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}

module "terraform-sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "https rule"
  description = "Security group for Terraform-Diego"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}
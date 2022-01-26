module "vpc" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git"

  name = "vpc1"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  private_subnet_tags = {
    Desc = "private"
  }

  public_subnet_tags = {
    Desc = "public"
  }

  enable_nat_gateway = true
  #manage_default_vpc = true
  #manage_default_security_group = true
  #default_security_group_tags   = { Name = "vpc1-default" }

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

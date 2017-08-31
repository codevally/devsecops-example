data "aws_region" "current" {
  current = true
}

module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "devsecops-example"

  cidr = "${var.vpc_cidr}"
  public_subnets  = ["${var.public_subnet_cidr}"]
  database_subnets = ["${var.database_subnet_cidrs}"]

  enable_nat_gateway = "true"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

  azs = ["${data.aws_region.current.name}d", "${data.aws_region.current.name}f"]

  tags {
    "Terraform" = "true"
    "Repository" = "https://github.com/GSA/devsecops-example"
  }
}

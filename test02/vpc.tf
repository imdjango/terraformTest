resource "aws_vpc" "vpc14" {
  cidr_block           = "114.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
  tags = {
    Name = "vpc14"
  }
}

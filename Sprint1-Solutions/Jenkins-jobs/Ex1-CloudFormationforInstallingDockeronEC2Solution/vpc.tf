resource "aws_vpc" "Docker-TF" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Docker_VPC-TF"
  }
}
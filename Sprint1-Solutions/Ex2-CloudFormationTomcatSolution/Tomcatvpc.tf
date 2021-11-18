resource "aws_vpc" "Tomcat-TF" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Tomcat_VPC-TF"
  }
}
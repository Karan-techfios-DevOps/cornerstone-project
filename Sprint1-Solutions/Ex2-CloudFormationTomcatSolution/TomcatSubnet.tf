resource "aws_subnet" "Tomcat-subnet" {
  vpc_id     = aws_vpc.Tomcat-TF.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Tomcat_Subnet-TF"
  }
}
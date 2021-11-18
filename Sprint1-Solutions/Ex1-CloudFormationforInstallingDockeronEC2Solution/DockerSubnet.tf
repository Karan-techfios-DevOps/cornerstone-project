resource "aws_subnet" "docker-subnet" {
  vpc_id     = aws_vpc.Docker-TF.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Docker_Subnet-TF"
  }
}
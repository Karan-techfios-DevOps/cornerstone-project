resource "aws_instance" "Docker_server" {
  ami             = "ami-04ad2567c9e3d7893"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.docker_sg.name]
  key_name        = "CornerstoneProject"
  user_data       = file("install_docker.sh")
  tags = {
    Name = "Docker-Server-TF"
  }
}

resource "null_resource" "status" {
  provisioner "local-exec" {
    command = "aws ec2 wait instance-status-ok --instance-ids ${aws_instance.Docker_server.id}"
  }
  depends_on = [
    aws_instance.Docker_server
  ]
}

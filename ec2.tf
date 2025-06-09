resource "aws_instance" "ec21" {
  ami = var.amiId
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  user_data = file("userdata.sh")
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    name = "Terraform Ec2"
  }
}
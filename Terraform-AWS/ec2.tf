resource "aws_instance" "prisec2" {
  ami                    = "ami-062a49a8152e4c031"
  instance_type          = "t2.micro"
  key_name               = "prismikaec2"
  subnet_id              = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.test-sg.id]
  associate_public_ip_address = true
  user_data = file("userdata.tpl")


  tags = {
    Name = "prisec2"
  }
}



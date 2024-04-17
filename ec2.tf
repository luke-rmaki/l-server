resource "aws_instance" "l-server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_pair_name
  security_groups             = ["${aws_security_group.security.id}"]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnet.id
  # user_data = file("init.sh")
  tags = {
    Name = "L-Server"
  }
}


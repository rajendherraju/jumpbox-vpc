resource "aws_instance" "jumpbox" {
  ami           = "ami-0c55b159cbfafe1f0" # Update this with the latest Ubuntu AMI ID for your region
  instance_type = "t2.micro"
  key_name      = var.key_name
  subnet_id     = element(var.public_subnets, 0)
  associate_public_ip_address = true

  tags = {
    Name = "Jumpbox"
  }
}

output "jumpbox_public_ip" {
  value = aws_instance.jumpbox.public_ip
}

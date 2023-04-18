resource "aws_instance" "mail" {
  count = 1
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.ssh_keyname

  tags = {
    Name = "Mail-${count.index}"
  }
}
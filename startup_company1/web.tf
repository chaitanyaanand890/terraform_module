resource "aws_instance" "web" {
  count = 1
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.ssh_keyname

  tags = {
    Name = "Web-${count.index}"
  }
}
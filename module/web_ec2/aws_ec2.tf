resource "aws_instance" "vm" {
  ami           = "ami-01cc34ab2709337aa"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0b31d612665f7db7f"
  tags          = {
    Name = "my-first-vm"
  }
}
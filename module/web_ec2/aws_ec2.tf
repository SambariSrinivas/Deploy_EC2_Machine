data "aws_instance" "vm" {

  ami       = "ami-01cc34ab2709337aa"
  subnet_id = "subnet-0b31d612665f7db7f"

}


resource "aws_instance" "vm" {
  ami           = data.aws_instance.vm.ami
  instance_type = "t3.micro"
  subnet_id     = data.aws_instance.vm.subnet_id
  tags          = {
    Name = "my-first-vm"
  }
}
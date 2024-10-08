variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_name" {}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "ExampleInstance"
  }
}

variable "db_name" {}
variable "username" {}
variable "password" {}
variable "instance_class" {}
variable "allocated_storage" {}

resource "aws_db_instance" "default" {
  identifier          = "mydb"
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = var.instance_class
  allocated_storage   = var.allocated_storage
  db_name             = var.db_name
  username            = var.username
  password            = var.password
  skip_final_snapshot = true

  tags = {
    Name = "MyDatabase"
  }
}

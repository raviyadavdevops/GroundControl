variable "function_name" {}
variable "handler" {}
variable "role" {}
variable "source_code_hash" {}
variable "filename" {}

resource "aws_lambda_function" "function" {
  function_name    = var.function_name
  handler          = var.handler
  role             = var.role
  source_code_hash = var.source_code_hash
  filename         = var.filename

  runtime = "python3.9"
}

variable "cluster_name" {}
variable "region" {}

resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.cluster_iam_role.arn
  vpc_config {
    subnet_ids = [aws_subnet.private.*.id]
  }
}

resource "aws_iam_role" "cluster_iam_role" {
  name = "${var.cluster_name}-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
  })
}

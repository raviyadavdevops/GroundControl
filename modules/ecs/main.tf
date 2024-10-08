variable "cluster_name" {}

resource "aws_ecs_cluster" "cluster" {
  name = var.cluster_name
}

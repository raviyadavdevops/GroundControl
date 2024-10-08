variable "cache_cluster_id" {}
variable "node_type" {}
variable "num_cache_nodes" {}

resource "aws_elasticache_cluster" "default" {
  cluster_id      = var.cache_cluster_id
  engine          = "redis"
  node_type       = var.node_type
  num_cache_nodes = var.num_cache_nodes

  tags = {
    Name = "MyCacheCluster"
  }
}

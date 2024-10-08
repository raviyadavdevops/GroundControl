variable "bucket_name" {}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "log"
    enabled = true

    expiration {
      days = 90
    }
  }
}

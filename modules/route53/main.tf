variable "zone_id" {}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  type    = "A"
  ttl     = 300
  records = [aws_cloudfront_distribution.distribution.domain_name]

  health_check_id = aws_route53_health_check.main.id
}

resource "aws_route53_health_check" "main" {
  fqdn              = "www.example.com"
  type              = "HTTP"
  resource_path     = "/"
  failure_threshold = 3
}

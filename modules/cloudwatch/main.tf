variable "instance_id" {}

resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "${var.instance_id}-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 80

  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_actions = [aws_sns_topic.alerts.arn]
}

resource "aws_sns_topic" "alerts" {
  name = "alerts"
}

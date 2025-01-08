resource "aws_sns_topic" "gameday_topic" {
    name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.gameday_topic.arn
  protocol  = "email"
  endpoint  = var.sns_email_endpoint
}
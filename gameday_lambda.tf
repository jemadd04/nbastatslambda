resource "aws_lambda_function" "gameday_lambda" {
  filename      = "src/lambda_function.zip"
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"

  runtime = "python3.13"

  environment {
    variables = {
      NBA_API_KEY = var.nba_api_key
      SNS_TOPIC_ARN = aws_sns_topic.gameday_topic.arn
    }
  }
}
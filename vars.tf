variable "sns_iam_name" {
    default = "gameday_sns_policy"
    description = "Name of SNS policy"
}

variable "region" {
    default = "us-east-1"
    description = "AWS Region"
}

variable "account_number" {
    description = "AWS account number"
}

variable "sns_topic_name" {
    default = "gameday_topic"
    description = "Name of SNS topic"
}

variable "sns_email_endpoint" {
    description = "Email endpoint used for SNS"
}

variable "lambda_role_name" {
    default = "gameday_lambda_role"
    description = "Name of IAM role for AWS Lambda function"
}

variable "lambda_function_name" {
    default = "gameday_notifications"
    description = "Name of AWS Lambda function"
}

variable "nba_api_key" {
    description = "API key for NBA API from SportsDataIO"
}
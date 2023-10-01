resource "aws_iam_role" "lambda_exec_role" {
  name = "my-lambda-exec-role"

  // permission boundary
  permissions_boundary = "arn:aws:iam::235947376681:policy/ScopePermissions"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "lambda_exec_role_attachment" {
  name       = "lambda-attachment"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  roles      = [aws_iam_role.lambda_exec_role.name]
}
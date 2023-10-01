resource "aws_lambda_function" "my_lambda" {
  filename         = data.archive_file.lambda_zip.output_path
  function_name    = "my-lambda-function"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "main.handler"
  runtime          = "nodejs18.x"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
}
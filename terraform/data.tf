data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "../src/my-lambda/dist"
  output_path = "${path.module}/lambda.zip"
}


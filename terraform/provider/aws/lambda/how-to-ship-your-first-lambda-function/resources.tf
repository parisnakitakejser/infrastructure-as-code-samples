data "archive_file" "init" {
  type        = "zip"
  source_dir  = "${path.module}/assets/lambda/helloWorld"
  output_path = "${path.module}/files/helloWorld.zip"
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Resource = ["*"]
      },
    ]
  })
}

resource "aws_lambda_function" "test_lambda" {
  filename      = data.archive_file.init.output_path
  function_name = "lambda_hello_world"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.handler"

  source_code_hash = filebase64sha256(data.archive_file.init.output_path)

  runtime = "python3.9"
}

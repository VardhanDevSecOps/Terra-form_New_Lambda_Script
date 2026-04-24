resource "aws_lambda_layer_version" "my_layer" {
  filename            = "layer.zip"
  layer_name          = "my_lambda_layer"
  compatible_runtimes = ["python3.10"]

  source_code_hash = filebase64sha256("layer.zip")
}

resource "aws_lambda_function" "my_lambda" {
  function_name = var.lambda_function_name
  filename      = "lambda.zip"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.10"
  role          = aws_iam_role.lambda_exec_role.arn

  source_code_hash = filebase64sha256("lambda.zip")

  layers = [
    aws_lambda_layer_version.my_layer.arn
  ]

  timeout     = 10
  memory_size = 128
}

import requests

#def lambda_handler(event, context):
#    return {
#        'statusCode': 200,
#        'body': requests.__version__
#    }
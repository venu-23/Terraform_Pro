resource "aws_iam_user" "demo" {
  name = var.name
}

resource "aws_iam_user_policy" "s3_full_access" {
  name = "${var.name}-s3-policy"
  user = aws_iam_user.demo.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = "s3:*",
        Resource = [
          "arn:aws:s3:::${var.bucket_name}",
          "arn:aws:s3:::${var.bucket_name}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "readonly" {
  user       = aws_iam_user.demo.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}


resource "aws_s3_bucket" "imdjango14test" {
  bucket = "imdjango14test"
  policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Effect": "Allow",
"Principal": {
"AWS": "arn:aws:iam::${var.alb_account_id}:root"
},
"Action": "s3:PutObject",
"Resource": "arn:aws:s3:::imdjango14test/*"
}
]
}
EOF

  lifecycle_rule {
    id      = "log_lifecycle"
    prefix  = ""
    enabled = true

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 90
    }
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_alb" "alb14" {
  name            = "alb14"
  internal        = false
  security_groups = ["${aws_security_group.alb14.id}"]
  subnets = [
    "${aws_subnet.subnet14_3a.id}",
    "${aws_subnet.subnet14_3b.id}"
  ]

  access_logs {
    bucket  = "${aws_s3_bucket.imdjango14eutest.id}"
    prefix  = "frontend-alb"
    enabled = true
  }

  tags = {
    Name = "imdjango14eu"
  }

  lifecycle { create_before_destroy = true }
}

resource "aws_alb" "alb14" {
  name            = "alb14"
  internal        = false
  security_groups = ["${aws_security_group.alb14.id}"]
  subnets = [
    "${aws_subnet.subnet14_1b.id}",
    "${aws_subnet.subnet14_1c.id}"
  ]

  access_logs {
    bucket  = "${aws_s3_bucket.imdjango14test.id}"
    prefix  = "frontend-alb"
    enabled = true
  }

  tags = {
    Name = "alb14"
  }

  lifecycle { create_before_destroy = true }
}

resource "aws_alb_listener" "http" {
  load_balancer_arn = "${aws_alb.alb14.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.albtg14.arn}"
    type             = "forward"
  }
}

resource "aws_alb_listener" "http2" {
  load_balancer_arn = "${aws_alb.alb14.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.albtg14.arn}"
    type             = "forward"
  }
}

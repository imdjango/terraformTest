resource "aws_autoscaling_group" "web14" {
  name = "${aws_launch_configuration.web14.name}"

  min_size         = 1
  desired_capacity = 2
  max_size         = 3

  health_check_type    = "ELB"
  target_group_arns    = ["${aws_alb_target_group.albtg14.arn}"]
  launch_configuration = "${aws_launch_configuration.web14.name}"

  enabled_metrics = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]

  metrics_granularity = "1Minute"

  vpc_zone_identifier = [
    "${aws_subnet.subnet14_1b.id}",
    "${aws_subnet.subnet14_1c.id}"
  ]

  lifecycle {
    create_before_destroy = true
  }

  tag {
    key                 = "Name"
    value               = "web-autoscaling14"
    propagate_at_launch = true
  }
}
resource "aws_autoscaling_group" "web14s" {
  name = "${aws_launch_configuration.web14s.name}"

  min_size         = 1
  desired_capacity = 2
  max_size         = 3

  health_check_type    = "ELB"
  target_group_arns    = ["${aws_alb_target_group.albtg14s.arn}"]
  launch_configuration = "${aws_launch_configuration.web14s.name}"

  enabled_metrics = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]

  metrics_granularity = "1Minute"

  vpc_zone_identifier = [
    "${aws_subnet.subnet14_1b.id}",
    "${aws_subnet.subnet14_1c.id}"
  ]

  lifecycle {
    create_before_destroy = true
  }

  tag {
    key                 = "Name"
    value               = "web-autoscaling14s"
    propagate_at_launch = true
  }
}

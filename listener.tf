resource "aws_lb_listener" "fargate_listener" {
  load_balancer_arn = aws_lb.fargate_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.fargate_target.arn
  }
}

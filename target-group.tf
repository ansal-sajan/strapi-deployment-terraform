resource "aws_lb_target_group" "fargate_target" {
  name     = "fargate-target-group"
  port     = 1337
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id  # Provide the VPC ID as a string
  target_type = "ip"
}

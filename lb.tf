resource "aws_lb" "fargate_lb" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ecs_sg.id]
  subnets            = [aws_subnet.public[0].id, aws_subnet.public[1].id]
}

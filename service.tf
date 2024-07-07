resource "aws_ecs_service" "my_app_service" {
  name            = var.ecs_service_name
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.my_app.arn
  desired_count   = 1

  network_configuration {
    subnets         = [aws_subnet.public[0].id, aws_subnet.public[1].id]  # Specify your public subnet ID here
    security_groups = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }

  capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.fargate_target.arn
    container_name   = "webapp"
    container_port   = 1337
  }

  tags = {
    Name = "my-app-service"
  }
}

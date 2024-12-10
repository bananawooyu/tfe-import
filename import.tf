import {
  to = aws_ecs_cluster.apache-app
  id = data.aws_ecs_cluster.ecs_cluster
}

import {
  to = aws_ecr_repository.service
  id = aws_ecr_repositories.ecr-apache
}
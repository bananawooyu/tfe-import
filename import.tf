import {
  to = aws_ecs_cluster.apache-app
  id = data.aws_ecs_cluster.ecs_cluster.cluster_name
}

import {
  to = aws_ecr_repository.service
  id = data.aws_ecr_repositories.ecr-apache
}
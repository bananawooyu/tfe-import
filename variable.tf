variable "ecs_cluster_name" {
    validation {
        condition     = length(var.ecs_cluster_name) > 0 
        error_message = "Error 원인 : VPC를 찾지 못했습니다"
    }
}
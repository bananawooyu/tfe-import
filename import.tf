import {
  to = aws_vpc.test_vpc
  id = data.aws_vpc.vpc.id
}

variable "vpc_name" {
    validation {
        condition     = length(var.vpc_name) > 0 
        error_message = "Error 원인 : VPC를 찾지 못했습니다"
    }
}

data "aws_vpc" "vpc" {
  filter {
    name = "tag:Name"
    values = [var.vpc_name]
  }
}
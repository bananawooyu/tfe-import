import {
  to = aws_vpc.test_vpc
  id = data.aws_vpc.vpc.id
}

variable "vpc_id" {
    default = ""
    validation {
        condition     = length(var.vpc_id) > 0 
        error_message = "Error 원인 : VPC를 찾지 못했습니다"
    }
}

data "aws_vpc" "vpc" {
  id = var.vpc_id
  filter {
    name = "tag:name"
    values = [ cn-vpc ]
  }
}
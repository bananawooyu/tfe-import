output "vpc_id" {
  description = "vpc id"
  value = data.aws_vpc.vpc.id
}
output "vpc_name" {
    description = "vpc name"
    value = var.vpc_name
}
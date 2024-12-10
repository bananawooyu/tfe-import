output "vpc_id" {
  description = "vpc id"
  value = var.vpc_name.id
}
output "vpc_name" {
    description = "vpc name"
    value = var.vpc_name
}
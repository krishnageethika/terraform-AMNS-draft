output "arn" {
  value = [for idx, subnet in aws_subnet.main : subnet.arn]
}

output "id" {
  value = [for idx, subnet in aws_subnet.main : subnet.id]
}
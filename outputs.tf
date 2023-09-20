output "vpc_id" {
  
  value = aws_vpc.main.id

}

output "azs" {
  value = local.azs
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.database[*].id
}

output "nat_gateway_id" {
  value = aws_subnet.nat_gateway_id.id
}
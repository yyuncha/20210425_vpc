output "my_vpc" {
    value = aws_vpc.my_vpc.id
}

output "subnet_web1" {
  value = aws_subnet.subnet_web1.id
}

output "subnet_web2" {
  value = aws_subnet.subnet_web2.id
}

output "subnet_db1" {
  value = aws_subnet.subnet_db1.id
}

output "subnet_db2" {
  value = aws_subnet.subnet_db2.id
}

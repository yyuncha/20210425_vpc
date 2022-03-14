variable "my_vpc" {
    type = object({
        cidr_block = string
        name = string
    })
  
}

variable "subnet_web1" {
     type = list(string)
}

variable "subnet_web2" {
     type = list(string)

}

variable "subnet_db1" {
    type = list(string)

}

variable "subnet_db2" {
    type = list(string)
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.my_vpc.cidr_block
    enable_classiclink = false
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      "Name" : var.my_vpc.name
    }

}

resource "aws_subnet" "subnet_web1" {
    availability_zone = var.subnet_web1[0]
    cidr_block = var.subnet_web1[1]
    vpc_id = aws_vpc.my_vpc.id
    tags={
        "Name" : var.subnet_web1[2]
    }
}

resource "aws_subnet" "subnet_web2" {
    availability_zone = var.subnet_web2[0]
    cidr_block = var.subnet_web2[1]
    vpc_id = aws_vpc.my_vpc.id
    tags = {
      "Name" : var.subnet_web2[2]
    }
}

resource "aws_subnet" "subnet_db1" {
    availability_zone = var.subnet_db1[0]
    cidr_block = var.subnet_db1[1]
    vpc_id = aws_vpc.my_vpc.id
    tags = {
      "Name" : var.subnet_db1[2]
    }
}

resource "aws_subnet" "subnet_db2" {
    availability_zone = var.subnet_db2[0]
    cidr_block = var.subnet_db2[1]
    vpc_id = aws_vpc.my_vpc.id
    tags = {
      "Name" : var.subnet_db2[2]
    }
}
variable aws_profile {type = string}
variable aws_region  {type = string}

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
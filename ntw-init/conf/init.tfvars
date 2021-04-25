aws_profile = "cyy"
aws_region = "ap-northeast-2"

my_vpc = {
    cidr_block = "100.111.0.0/24"
    name = "my_vpc"
}

subnet_web1 = ["ap-northeast-2a", "100.111.0.0/26", "my_vpc-subnet_web1"]
subnet_web2 = ["ap-northeast-2c", "100.111.0.64/26", "my_vpc-subnet_web2"]
subnet_db1  = ["ap-northeast-2a", "100.111.0.128/28", "my_vpc-subnet_db1"]
subnet_db2  = ["ap-northeast-2c", "100.111.0.144/28", "my_vpc-subnet_db2"]

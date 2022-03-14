## SUBNET 선언 ##
resource "aws_subnet" "subnet-WEB1-10-0-1-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.1.0/24"
    availability_zone       = "ap-northeast-2a"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "WEB1"
        "Name" = "{PRD},{SUBNET},{2-A},{WEB1},{10.0.1.0/24}"
        "2.AZ" = "2-A"
        "4.IP Prefix" = "10.0.1.0/24"
    }
}
resource "aws_subnet" "subnet-WEB2-10-0-2-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.2.0/24"
    availability_zone       = "ap-northeast-2c"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "WEB2"
        "Name" = "{PRD},{SUBNET},{2-C},{WEB2},{10.0.2.0/24}"
        "2.AZ" = "2-C"
        "4.IP Prefix" = "10.0.2.0/24"
    }
}
resource "aws_subnet" "subnet-AP1-10-0-101-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.101.0/24"
    availability_zone       = "ap-northeast-2a"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "AP1"
        "Name" = "{PRD},{SUBNET},{2-A},{AP1},{10.0.101.0/24}"
        "2.AZ" = "2-A"
        "4.IP Prefix" = "10.0.101.0/24"
    }
}
resource "aws_subnet" "subnet-AP2-10-0-102-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.102.0/24"
    availability_zone       = "ap-northeast-2c"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "AP2"
        "Name" = "{PRD},{SUBNET},{2-C},{AP1},{10.0.102.0/24}"
        "2.AZ" = "2-C"
        "4.IP Prefix" = "10.0.102.0/24"
    }
}
resource "aws_subnet" "subnet-DB1-10-0-201-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.201.0/24"
    availability_zone       = "ap-northeast-2a"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "DB1"
        "Name" = "{PRD},{SUBNET},{2-A},{DB1},{10.0.201.0/24}"
        "2.AZ" = "2-A"
        "4.IP Prefix" = "10.0.201.0/24"
    }
}
resource "aws_subnet" "subnet-DB2-10-0-202-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.202.0/24"
    availability_zone       = "ap-northeast-2c"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "DB2"
        "Name" = "{PRD},{SUBNET},{2-C},{DB1},{10.0.202.0/24}"
        "2.AZ" = "2-C"
        "4.IP Prefix" = "10.0.202.0/24"
    }
}
resource "aws_subnet" "subnet-NAT1-10-0-241-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.241.0/24"
    availability_zone       = "ap-northeast-2a"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "NAT1"
        "Name" = "{PRD},{SUBNET},{2-A},{NAT1},{10.0.241.0/24}"
        "2.AZ" = "2-A"
        "4.IP Prefix" = "10.0.241.0/24"
    }
}
resource "aws_subnet" "subnet-NAT2-10-0-242-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.242.0/24"
    availability_zone       = "ap-northeast-2c"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "NAT2"
        "Name" = "{PRD},{SUBNET},{2-C},{NAT2},{10.0.242.0/24}"
        "2.AZ" = "2-C"
        "4.IP Prefix" = "10.0.242.0/24"
    }
}
# 서비스 AZ를 A,C로 하여서 MGMT AZ는 B로 하였지만 B의 경우 T2.Micro가 없기 때문에 학습할 경우에만 A Zone으로 선언 #
resource "aws_subnet" "subnet-MGMT-10-0-254-0-24" {
    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    cidr_block              = "10.0.254.0/24"
    availability_zone       = "ap-northeast-2a"
    map_public_ip_on_launch = false

    tags ={
        "1.AWS Service" = "SUBNET"
        "0.Zone" = "PRD"
        "3.TIER" = "MGMT"
        "Name" = "{PRD},{SUBNET},{2-A},{MGMT},{10.0.254.0/24}"
        "2.AZ" = "2-A"
        "4.IP Prefix" = "10.0.254.0/24"
    }
}
#resource "aws_subnet" "subnet-MGMT-10-0-254-0-24" {
#    vpc_id                  = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
#    cidr_block              = "10.0.254.0/24"
#    availability_zone       = "ap-northeast-2b"
#    map_public_ip_on_launch = false

#    tags ={
#        "1.AWS Service" = "SUBNET"
#        "0.Zone" = "PRD"
#        "3.TIER" = "MGMT"
#        "Name" = "{PRD},{SUBNET},{2-B},{MGMT},{10.0.254.0/24}"
#        "2.AZ" = "2-B"
#        "4.IP Prefix" = "10.0.254.0/24"
#    }
#}

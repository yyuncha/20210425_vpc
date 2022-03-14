## VPC 선언 ##
resource "aws_vpc" "PRD-VPC-10-0-0-0-16" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_hostnames = false
    enable_dns_support   = true
    instance_tenancy     = "default"

    tags = {
        "Name" = "PRD-VPC-10.0.0.0/16"
        "0.Zone" = "PRD"
        "3.IP Prefix" = "10.0.0.0/16"
        "1.AWS Service" = "VPC"
    }
}

## Internet Gateway 선언 ##
resource "aws_internet_gateway" "PRD-IGW" {
    vpc_id = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"

    tags = {
        "0.Zone" = "PRD"
        "1.AWS Service" = "IGW"
        "Name" = "{PRD},{IGW}"
    }
}

## Public Routing Table(Default) 선언 ##
resource "aws_default_route_table" "PRD-RT-DEFAULT-WEB-NAT-MGMT" {
    default_route_table_id = "${aws_vpc.PRD-VPC-10-0-0-0-16.default_route_table_id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.PRD-IGW.id}"
    }

    tags = {
        "0.Zone" = "PRD"
        "1.AWS Service" = "RT"
        "2.AZ" = "DEFAULT"
        "3.TIER" = "WEB,NAT,MGMT"
        "Name" = "{PRD},{RT},{DEFAULT},{WEB,NAT,MGMT}"
    }
}


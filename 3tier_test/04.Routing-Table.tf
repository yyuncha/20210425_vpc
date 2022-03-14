## Private Routing Table 선언 ##
resource "aws_route_table" "PRD-RT-2A-AP1-DB1" {
    vpc_id = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.PRD-NAT1.id}"
    }

    tags = {
        "1.AWS Service" = "RT"
        "2.AZ" = "2-A"
        "3.TIER" = "AP1,DB1"
        "Name" = "{PRD},{RT},{2-A},{AP1,DB1}"
        "0.Zone" = "PRD"
    }
}
resource "aws_route_table" "PRD-RT-2C-AP2-DB2" {
    vpc_id = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.PRD-NAT2.id}"
    }

    tags = {
        "1.AWS Service" = "RT"
        "3.TIER" = "AP2,DB2"
        "0.Zone" = "PRD"
        "Name" = "{PRD},{RT},{2-C},{AP2,DB2}"
        "2.AZ" = "2-C"
    }
}

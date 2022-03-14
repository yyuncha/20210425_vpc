# NAT Gateway 1번 공인IP 선언 #
resource "aws_eip" "PRD-EIP-NAT1" {
    vpc = true
}

# NAT Gateway 2번 공인IP 선언 #
resource "aws_eip" "PRD-EIP-NAT2" {
    vpc = true
}

# NAT Gateway 선언 #
resource "aws_nat_gateway" "PRD-NAT1" {
    allocation_id = "${aws_eip.PRD-EIP-NAT1.id}"
    subnet_id = "${aws_subnet.subnet-NAT1-10-0-241-0-24.id}"
}
resource "aws_nat_gateway" "PRD-NAT2" {
    allocation_id = "${aws_eip.PRD-EIP-NAT2.id}"
    subnet_id = "${aws_subnet.subnet-NAT2-10-0-242-0-24.id}"
}


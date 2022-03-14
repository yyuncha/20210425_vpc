# Web Tier Network Access List 선언 #
resource "aws_network_acl" "PRD-NACL-WEB" {
  vpc_id     = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
  subnet_ids = ["${aws_subnet.subnet-WEB1-10-0-1-0-24.id}", "${aws_subnet.subnet-WEB2-10-0-2-0-24.id}"]
  ingress {
    from_port  = 80
    to_port    = 80
    rule_no    = 1
    action     = "allow"
    protocol   = "6"
    cidr_block = "0.0.0.0/0"
  }
  ingress {
    from_port  = 443
    to_port    = 443
    rule_no    = 2
    action     = "allow"
    protocol   = "6"
    cidr_block = "0.0.0.0/0"
  }
  ingress {
    from_port  = 0
    to_port    = 0
    rule_no    = 2001
    action     = "allow"
    protocol   = "-1"
    cidr_block = "10.0.101.0/24"
  }
  ingress {
    from_port  = 0
    to_port    = 0
    rule_no    = 2002
    action     = "allow"
    protocol   = "-1"
    cidr_block = "10.0.102.0/24"
  }
  ingress {
    from_port  = 22
    to_port    = 22
    rule_no    = 9990
    action     = "allow"
    protocol   = "6"
    cidr_block = "10.0.254.0/24"
  }
  egress {
    from_port  = 0
    to_port    = 0
    rule_no    = 9999
    action     = "allow"
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  }
  tags ={
    "Zone" = "PRD"
    "AWS_Service" = "NACL"
    "TIER" = "WEB"
    "Name" = "{PRD},{NACL},{WEB}"
  }
}

# NAT Tier Network Access List 선언 #
resource "aws_network_acl" "PRD-NACL-NAT" {
  vpc_id     = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
  subnet_ids = ["${aws_subnet.subnet-NAT1-10-0-241-0-24.id}", "${aws_subnet.subnet-NAT2-10-0-242-0-24.id}"]
  ingress {
        from_port  = 80
        to_port    = 80
        rule_no    = 1
        action     = "allow"
        protocol   = "6"
        cidr_block = "0.0.0.0/0"
  }
  ingress {
        from_port  = 443
        to_port    = 443
        rule_no    = 2
        action     = "allow"
        protocol   = "6"
        cidr_block = "0.0.0.0/0"
  }
  egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 9999
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
  }
  tags ={
    "Zone" = "PRD"
    "AWS_Service" = "NACL"
    "TIER" = "NAT"
    "Name" = "{PRD},{NACL},{NAT}"
  }
}

# AP Tier Network Access List 선언 #
resource "aws_network_acl" "PRD-NACL-AP" {
  vpc_id     = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
  subnet_ids = ["${aws_subnet.subnet-AP1-10-0-101-0-24.id}", "${aws_subnet.subnet-AP2-10-0-102-0-24.id}"]
  ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 1001
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.1.0/24"
  }
  ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 1002
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.2.0/24"
  }
  ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 3001
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.201.0/24"
  }
  ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 3002
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.202.0/24"
  }
  ingress {
    from_port  = 22
    to_port    = 22
    rule_no    = 9990
    action     = "allow"
    protocol   = "6"
    cidr_block = "10.0.254.0/24"
  }
  egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 9998
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.0.0/16"
  }
  tags ={
    "Zone" = "PRD"
    "AWS_Service" = "NACL"
    "TIER" = "AP"
    "Name" = "{PRD},{NACL},{AP}"
  }
}

# DB Tier Network Access List 선언 #
resource "aws_network_acl" "PRD-NACL-DB" {
  vpc_id     = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
  subnet_ids = ["${aws_subnet.subnet-DB1-10-0-201-0-24.id}", "${aws_subnet.subnet-DB2-10-0-202-0-24.id}"]
  ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 2001
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.101.0/24"
  }
  ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 2002
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.102.0/24"
  }
  ingress {
    from_port  = 3306
    to_port    = 3306
    rule_no    = 9990
    action     = "allow"
    protocol   = "6"
    cidr_block = "10.0.254.0/24"
  }
  egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 9998
        action     = "allow"
        protocol   = "-1"
        cidr_block = "10.0.0.0/16"
  }
  tags ={
    "Zone" = "PRD"
    "AWS_Service" = "NACL"
    "TIER" = "DB"
    "Name" = "{PRD},{NACL},{DB}"
  }
}

# MGMT Tier Network Access List 선언 #
resource "aws_network_acl" "PRD-NACL-MGMT" {
  vpc_id     = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
  subnet_ids = ["${aws_subnet.subnet-MGMT-10-0-254-0-24.id}"]
  ingress {
        from_port  = 500
        to_port    = 500
        rule_no    = 10
        action     = "allow"
        protocol   = "17"
        cidr_block = "0.0.0.0/0"
  }
  ingress {
        from_port  = 1701
        to_port    = 1701
        rule_no    = 11
        action     = "allow"
        protocol   = "17"
        cidr_block = "0.0.0.0/0"
  }
  ingress {
        from_port  = 4500
        to_port    = 4500
        rule_no    = 12
        action     = "allow"
        protocol   = "17"
        cidr_block = "0.0.0.0/0"
  }
  ingress {
        from_port  = 5555
        to_port    = 5555
        rule_no    = 13
        action     = "allow"
        protocol   = "6"
        cidr_block = "0.0.0.0/0"
  }
  ingress {
        from_port  = 22
        to_port    = 22
        rule_no    = 1001
        action     = "allow"
        protocol   = "6"
        cidr_block = "10.0.1.0/24"
  }
  ingress {
        from_port  = 22
        to_port    = 22
        rule_no    = 1002
        action     = "allow"
        protocol   = "6"
        cidr_block = "10.0.2.0/24"
  }
  ingress {
        from_port  = 22
        to_port    = 22
        rule_no    = 2001
        action     = "allow"
        protocol   = "6"
        cidr_block = "10.0.101.0/24"
  }
  ingress {
        from_port  = 22
        to_port    = 22
        rule_no    = 2002
        action     = "allow"
        protocol   = "6"
        cidr_block = "10.0.102.0/24"
  }
  ingress {
        from_port  = 3306
        to_port    = 3306
        rule_no    = 3001
        action     = "allow"
        protocol   = "6"
        cidr_block = "10.0.201.0/24"
  }
  ingress {
        from_port  = 3306
        to_port    = 3306
        rule_no    = 3002
        action     = "allow"
        protocol   = "6"
        cidr_block = "10.0.202.0/24"
  }
  egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 9999
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
  }
  tags ={
    "Zone" = "PRD"
    "AWS_Service" = "NACL"
    "TIER" = "MGMT"
    "Name" = "{PRD},{NACL},{MGMT}"
  }
}

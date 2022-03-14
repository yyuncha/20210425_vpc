# WEB Instance Security Group 선언 #
resource "aws_security_group" "PRD-SG-WEB-WEB_EC2" {
    name        = "{PRD},{SG},{WEB},{WEB-EC2}"
    description = "190816"
    vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["10.0.254.0/24"]
    }
    ingress {
        from_port       = -1
        to_port         = -1
        protocol        = "icmp"
        cidr_blocks     = ["10.0.254.0/24"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    tags = {
       "5.Mapping" = "WEB-EC2"
       "1.AWS Service" = "SG"
       "3.TIER" = "WEB"
       "0.Zone" = "PRD"
       "Name" = "{PRD},{SG},{WEB},{WEB-EC2}"
    }
}

# AP Instance Security Group 선언 #
resource "aws_security_group" "PRD-SG-AP-AP_EC2" {
    name        = "{PRD},{SG},{AP},{AP-EC2}"
    description = "190816"
    vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    ingress {
        from_port       = 8080
        to_port         = 8080
        protocol        = "tcp"
        cidr_blocks     = ["10.0.1.0/24"]
    }
    ingress {
        from_port       = 8080
        to_port         = 8080
        protocol        = "tcp"
        cidr_blocks     = ["10.0.2.0/24"]
    }
    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["10.0.254.0/24"]
    }
    ingress {
        from_port       = -1
        to_port         = -1
        protocol        = "icmp"
        cidr_blocks     = ["10.0.254.0/24"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["10.0.0.0/16"]
    }
    tags = {
       "5.Mapping" = "AP-EC2"
       "1.AWS Service" = "SG"
       "3.TIER" = "AP"
       "0.Zone" = "PRD"
       "Name" = "{PRD},{SG},{AP},{AP-EC2}"
    }
}

# DB Instance Security Group 선언 #
resource "aws_security_group" "PRD-SG-DB-RDS" {
    name        = "{PRD},{SG},{DB},{RDS}"
    description = "190816"
    vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        cidr_blocks     = ["10.0.101.0/24"]
    }
    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        cidr_blocks     = ["10.0.102.0/24"]
    }
    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        cidr_blocks     = ["10.0.254.0/24"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["10.0.0.0/16"]
    }
    tags = {
       "5.Mapping" = "RDS"
       "1.AWS Service" = "SG"
       "3.TIER" = "DB"
       "0.Zone" = "PRD"
       "Name" = "{PRD},{SG},{DB},{RDS}"
    }
}

# BASTION Instance Security Group 선언 #
resource "aws_security_group" "PRD-SG-MGMT-BASTION_EC2" {
    name        = "{PRD},{SG},{MGMT},{BASTION-EC2}"
    description = "190816"
    vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    ingress {
        from_port       = 500
        to_port         = 500
        protocol        = "UDP"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 1701
        to_port         = 1701
        protocol        = "UDP"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 4500
        to_port         = 4500
        protocol        = "UDP"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 5555
        to_port         = 5555
        protocol        = "TCP"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["10.0.0.0/16"]
    }
    tags = {
       "5.Mapping" = "BASTION-EC2"
       "1.AWS Service" = "SG"
       "3.TIER" = "MGMT"
       "0.Zone" = "PRD"
       "Name" = "{PRD},{SG},{MGMT},{BASTION-EC2}"
    }
}

# ELB(WEB,AP) Security Group 선언 #
resource "aws_security_group" "PRD-SG-WEB-LB" {
    name        = "{PRD},{SG},{WEB},{LB}"
    description = "190816"
    vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    tags = {
       "5.Mapping" = "LB"
       "1.AWS Service" = "SG"
       "3.TIER" = "WEB"
       "0.Zone" = "PRD"
       "Name" = "{PRD},{SG},{WEB},{LB}"
    }
}
resource "aws_security_group" "PRD-SG-AP-LB" {
    name        = "{PRD},{SG},{AP},{LB}"
    description = "190816"
    vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
    ingress {
        from_port       = 8080
        to_port         = 8080
        protocol        = "tcp"
        cidr_blocks     = ["10.0.1.0/24"]
    }
    ingress {
        from_port       = 8080
        to_port         = 8080
        protocol        = "tcp"
        cidr_blocks     = ["10.0.2.0/24"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["10.0.0.0/16"]
    }
    tags = {
       "5.Mapping" = "LB"
       "1.AWS Service" = "SG"
       "3.TIER" = "AP"
       "0.Zone" = "PRD"
       "Name" = "{PRD},{SG},{AP},{LB}"
    }
}
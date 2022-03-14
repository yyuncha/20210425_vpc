# Public Routing-Table(Default) Subnet Association #
resource "aws_route_table_association" "PRD-RT-DEFAULT-WEB1" {
  route_table_id = "${aws_default_route_table.PRD-RT-DEFAULT-WEB-NAT-MGMT.id}"
  subnet_id = "${aws_subnet.subnet-WEB1-10-0-1-0-24.id}"
}
resource "aws_route_table_association" "PRD-RT-DEFAULT-WEB2" {
  route_table_id = "${aws_default_route_table.PRD-RT-DEFAULT-WEB-NAT-MGMT.id}"
  subnet_id = "${aws_subnet.subnet-WEB2-10-0-2-0-24.id}"
}
resource "aws_route_table_association" "NPRD-RT-DEFAULT-NAT1" {
  route_table_id = "${aws_default_route_table.PRD-RT-DEFAULT-WEB-NAT-MGMT.id}"
  subnet_id = "${aws_subnet.subnet-NAT1-10-0-241-0-24.id}"
}
resource "aws_route_table_association" "PRD-RT-DEFAULT-NAT2" {
  route_table_id = "${aws_default_route_table.PRD-RT-DEFAULT-WEB-NAT-MGMT.id}"
  subnet_id = "${aws_subnet.subnet-NAT2-10-0-242-0-24.id}"
}
resource "aws_route_table_association" "PRD-RT-DEFAULT-MGMT" {
  route_table_id = "${aws_default_route_table.PRD-RT-DEFAULT-WEB-NAT-MGMT.id}"
  subnet_id = "${aws_subnet.subnet-MGMT-10-0-254-0-24.id}"
}

## Private1 Routing-Table Subnet Association #
resource "aws_route_table_association" "PRD-RT-2A-AP1" {
  route_table_id = "${aws_route_table.PRD-RT-2A-AP1-DB1.id}"
  subnet_id = "${aws_subnet.subnet-AP1-10-0-101-0-24.id}"
}
resource "aws_route_table_association" "PRD-RT-2A-DB1" {
  route_table_id = "${aws_route_table.PRD-RT-2A-AP1-DB1.id}"
  subnet_id = "${aws_subnet.subnet-DB1-10-0-201-0-24.id}"
}

## Private2 Routing-Table Subnet Association #
resource "aws_route_table_association" "PRD-RT-2B-AP2" {
  route_table_id = "${aws_route_table.PRD-RT-2C-AP2-DB2.id}"
  subnet_id = "${aws_subnet.subnet-AP2-10-0-102-0-24.id}"
}
resource "aws_route_table_association" "PRD-RT-2B-DB2" {
  route_table_id = "${aws_route_table.PRD-RT-2C-AP2-DB2.id}"
  subnet_id = "${aws_subnet.subnet-DB2-10-0-202-0-24.id}"
}

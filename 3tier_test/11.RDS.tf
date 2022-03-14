# Database Subnet Group 선언 #
resource "aws_db_subnet_group" "prd-subnet-db" {
    name        = "prd-subnet-db"
    description = "DB Service in Product Zone"
    subnet_ids  = ["${aws_subnet.subnet-DB1-10-0-201-0-24.id}", "${aws_subnet.subnet-DB2-10-0-202-0-24.id}"]
}

# Database 선언 #
resource "aws_db_instance" "prd-rds-mdb-test" {
    identifier                = "prd-rds-mdb-test"
    allocated_storage         = 20
    storage_type              = "gp2"
    engine                    = "mariadb"
    engine_version            = "10.2.21"
    instance_class            = "db.t2.micro"
    username                  = "admin"
    password                  = "admin1234"
    port                      = 3306
    publicly_accessible       = false
    availability_zone         = "ap-northeast-2a"
    vpc_security_group_ids    = ["${aws_security_group.PRD-SG-DB-RDS.id}"]
    db_subnet_group_name      = "${aws_db_subnet_group.prd-subnet-db.name}"
    parameter_group_name      = "default.mariadb10.2"
    multi_az                  = false
    backup_retention_period   = 0
    skip_final_snapshot       = true
}


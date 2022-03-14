# Web Tire EC2 선언 #
resource "aws_instance" "PRD-EC2-WEB-WEB1" {
    ami                         = "ami-095ca789e0549777d" ## Amazon Linux 2 AMI (HVM)
    availability_zone           = "ap-northeast-2a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "${aws_key_pair.PRD-KP-WEB-190812.key_name}"
    subnet_id                   = "${aws_subnet.subnet-WEB1-10-0-1-0-24.id}"
    vpc_security_group_ids      = ["${aws_security_group.PRD-SG-WEB-WEB_EC2.id}"]
    associate_public_ip_address = false
    private_ip                  = "10.0.1.11"
    source_dest_check           = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }
    tags = {
        "3.TIER" = "WEB"
        "0.Zone" = "PRD"
        "1.AWS Service" = "EC2"
        "6.AMI" = "ami-095ca789e0549777d"
        "7.Hostname" = "WEB1"
        "Name" = "{PRD},{EC2},{WEB},{ami-095ca789e0549777d},{WEB1}"
    }
}
resource "aws_instance" "PRD-EC2-WEB-WEB2" {
    ami                         = "ami-095ca789e0549777d" ## Amazon Linux 2 AMI (HVM)
    availability_zone           = "ap-northeast-2c"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "${aws_key_pair.PRD-KP-WEB-190812.key_name}"
    subnet_id                   = "${aws_subnet.subnet-WEB2-10-0-2-0-24.id}"
    vpc_security_group_ids      = ["${aws_security_group.PRD-SG-WEB-WEB_EC2.id}"]
    associate_public_ip_address = false
    private_ip                  = "10.0.2.11"
    source_dest_check           = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }
    tags = {
        "3.TIER" = "WEB"
        "0.Zone" = "PRD"
        "1.AWS Service" = "EC2"
        "6.AMI" = "ami-095ca789e0549777d"
        "7.Hostname" = "WEB2"
        "Name" = "{PRD},{EC2},{WEB},{ami-095ca789e0549777d},{WEB2}"
    }
}

# AP Tire EC2 선언 #
resource "aws_instance" "PRD-EC2-AP-AP1" {
    ami                         = "ami-095ca789e0549777d" ## Amazon Linux 2 AMI (HVM)
    availability_zone           = "ap-northeast-2a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "${aws_key_pair.PRD-KP-AP-190812.key_name}"
    subnet_id                   = "${aws_subnet.subnet-AP1-10-0-101-0-24.id}"
    vpc_security_group_ids      = ["${aws_security_group.PRD-SG-AP-AP_EC2.id}"]
    associate_public_ip_address = false
    private_ip                  = "10.0.101.11"
    source_dest_check           = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }
    tags = {
        "3.TIER" = "AP"
        "0.Zone" = "PRD"
        "1.AWS Service" = "EC2"
        "6.AMI" = "ami-095ca789e0549777d"
        "7.Hostname" = "AP1"
        "Name" = "{PRD},{EC2},{AP},{ami-095ca789e0549777d},{AP1}"
    }
}
resource "aws_instance" "PRD-EC2-AP-AP2" {
    ami                         = "ami-095ca789e0549777d" ## Amazon Linux 2 AMI (HVM)
    availability_zone           = "ap-northeast-2c"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "${aws_key_pair.PRD-KP-AP-190812.key_name}"
    subnet_id                   = "${aws_subnet.subnet-AP2-10-0-102-0-24.id}"
    vpc_security_group_ids      = ["${aws_security_group.PRD-SG-AP-AP_EC2.id}"]
    associate_public_ip_address = false
    private_ip                  = "10.0.102.11"
    source_dest_check           = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }
    tags = {
        "3.TIER" = "AP"
        "0.Zone" = "PRD"
        "1.AWS Service" = "EC2"
        "6.AMI" = "ami-095ca789e0549777d"
        "7.Hostname" = "AP2"
        "Name" = "{PRD},{EC2},{AP},{ami-095ca789e0549777d},{AP2}"
    }
}

# MGMT Tire EC2 선언(서비스 AZ를 A,C로 하여서 MGMT AZ는 B로 하였지만 B의 경우 T2.Micro가 없기 때문에 학습할 경우에만 A Zone으로 선언) #
resource "aws_instance" "PRD-EC2-MGMT-BASTION" {
    ami                         = "ami-095ca789e0549777d" ## Amazon Linux 2 AMI (HVM)
    availability_zone           = "ap-northeast-2a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "${aws_key_pair.PRD-KP-MGMT-190812.key_name}"
    subnet_id                   = "${aws_subnet.subnet-MGMT-10-0-254-0-24.id}"
    vpc_security_group_ids      = ["${aws_security_group.PRD-SG-MGMT-BASTION_EC2.id}"]
    associate_public_ip_address = false
    private_ip                  = "10.0.254.11"
    source_dest_check           = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }
    tags = {
        "3.TIER" = "MGMT"
        "0.Zone" = "PRD"
        "1.AWS Service" = "EC2"
        "6.AMI" = "ami-095ca789e0549777d"
        "7.Hostname" = "BASTION"
        "Name" = "{PRD},{EC2},{MGMT},{ami-095ca789e0549777d},{BASTION}"
    }
}
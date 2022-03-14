# WEB-EC2 공인IP 선언 #
resource "aws_eip" "PRD-EIP-EC2-WEB1" {
  vpc = true
  instance = "${aws_instance.PRD-EC2-WEB-WEB1.id}"
}

# Web Tire EC2 선언 #
resource "aws_instance" "PRD-EC2-WEB-WEB1" {
  ami                         = "ami-0d097db2fb6e0f05e" ## Amazon Linux 2 AMI (HVM)
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
  ebs_block_device {
    device_name           = "/dev/sdb"
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
  }
  # 볼륨 추가 쉘스크립트 실행
  user_data = "${file("Shell_Script/00.Disk_Mount.sh")}"
  tags = {
    "3.TIER"        = "WEB"
    "0.Zone"        = "PRD"
    "1.AWS Service" = "EC2"
    "6.AMI"         = "ami-0d097db2fb6e0f05e"
    "7.Hostname"    = "WEB1"
    "Name"          = "{PRD},{EC2},{WEB},{ami-0d097db2fb6e0f05e},{WEB1}"
  }
}
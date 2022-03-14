# Web Tier Target Group 선언 #
resource "aws_lb_target_group" "PRD-ALB-WEB-TARGET-GROUP-80" {
  name        = "PRD-NLB-WEB-TG-80"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance" # ip로 가능
  vpc_id      = "${aws_vpc.PRD-VPC-10-0-0-0-16.id}"
}

# Web Tier Target Group에 LB 대상 EC2 Attach(LB 대상 EC2 갯수만큼 선언) #
resource "aws_alb_target_group_attachment" "PRD-ALB-WEB-TARGET-ATTACH-HTTP-80-1" {
  target_group_arn = "${aws_lb_target_group.PRD-ALB-WEB-TARGET-GROUP-80.arn}"
  target_id        = "${aws_instance.PRD-EC2-WEB-WEB1.id}" # Target Group에 Type를 IP로 할 경우 "private.ip"로 선택
  port             = 80
}
resource "aws_alb_target_group_attachment" "PRD-ALB-WEB-TARGET-ATTACH-HTTP-80-2" {
  target_group_arn = "${aws_lb_target_group.PRD-ALB-WEB-TARGET-GROUP-80.arn}"
  target_id        = "${aws_instance.PRD-EC2-WEB-WEB2.id}"
  port             = 80
}

# WEB Tier Applicastion Loadbalancer 선언 #
resource "aws_lb" "PRD-ALB-WEB" {
    internal        = false
    name            = "PRD-ALB-WEB"
    security_groups = ["${aws_security_group.PRD-SG-WEB-LB.id}"]
    load_balancer_type = "application" # ALB : "application", NLB : "network"
    subnets         = ["${aws_subnet.subnet-WEB1-10-0-1-0-24.id}","${aws_subnet.subnet-WEB2-10-0-2-0-24.id}"]
    enable_deletion_protection = false

    tags = {
        "Name" = "PRD_ALB_WEB"
    }
}

# WEB Tier Listener 선언 #
resource "aws_alb_listener" "PRD-ALB-WEB-LISTENER-80" {
  load_balancer_arn = "${aws_lb.PRD-ALB-WEB.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.PRD-ALB-WEB-TARGET-GROUP-80.arn}"
  }
}


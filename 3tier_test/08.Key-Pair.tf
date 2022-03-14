# Web Tier Key-Pair 선언 #
resource "aws_key_pair" "PRD-KP-WEB-190812" {
  key_name = "PRD-KR-WEB-190812"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCigL7FOe8nsShOilnvAtc1zpzGmk2rYNy5iEFAfmQ5ZIEoVPqFz4Snc3K0Sxt3dtLdfpZmFTgm/z/BMc1/3xl3JHcVNgziRTIPAiupQ9DypJrFAWsWmjLohgitSkskXLoG3VIynxynYmO31Rt3uf83QF5JOlbiCQmSsCKEHMCaYu2cjyHW2TAUGSLKPIwT1Uylhuc0bnad8vu/OOVJ8cRRGSKuKvCZzm49mSarY91uusNmI+YjouJ70W5AP90CS2yRoTHouyAARHI8fLhU9rxAWps9ZezvUD4CtI3WgunsKTj8F8ykmVyhBGEhO2rtgb768CQxwYVVIxDsY6MfyJs5 nandali@JAKE-LINUX-VM"
}

# AP Tier Key-Pair 선언 #
resource "aws_key_pair" "PRD-KP-AP-190812" {
  key_name = "PRD-KR-AP-190812"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJKQoWKo4Awtgrq7WLseK5xQBdNs4e7/ocvQSs5XX/vrk7XFUvOJ3MkdBannX4iFP1iupJCPPB9nj8M58eRJS31TEGzJr1iUV1n59WHWPSkcm2izJzyWu0jTuw8AvB2uK2GbxTCJPt8ljm0Q6IAF7EghqNuEipmac5TVPTsPtc5XsWrwkBR4lr4ejyxwjLFZ5U9fG585IPz3QPv/RZH2PQ/YdLZ4deq2GgcRNeLfePAtfopJ9vqjciU+3gpV/JH0wuWLU2m9d1lrYuwzyrTcmNVuoDmhDUtXEiftz2jDJInPQk5BDAGS+I/lyGDPO8CMgIhKpovqP9pbcwSad7Mf1V nandali@JAKE-LINUX-VM"
}

# MGMT Tier Key-Pair 선언 #
resource "aws_key_pair" "PRD-KP-MGMT-190812" {
  key_name = "PRD-KR-MGMT-190812"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7JBPW3WkvJtyljnoQ6twm1o1U8uqmG9uQtPsTMi7nYMjxMQYPCl4yh9Z4nNLZ+vNz3+RZLr+MNjpka7ER6qAa7TYWt3QTwA7L+CUp9AEy7nnZjk5+0NTp15TvFifxrT1IQqIpqR/iTN+Ixzcil1pboSOd5P7khREouwreEZ5bwfYPrMtaoRxY/4gjBu2qgAshjEQW1oORaGQ+k0IKcEoNS+54BUjrhXnDxe4c6W6jq60g6born3WOiWrLeCsk8+E46cqNCvJ0GKAS17NK7uIJ9gQ/l9leoDBnPfa44j41hP9N37ycTtf3gKFnTB7Ldr7KCbSJ+0ENrMGJ7yaurSDT nandali@JAKE-LINUX-VM"
}
module "ntw-init-module" {
  source = "../../module/ntw-init"
  
  my_vpc = var.my_vpc


  subnet_web1 = var.subnet_web1
  subnet_web2 = var.subnet_web2
  subnet_db1 = var.subnet_db1
  subnet_db2 = var.subnet_db2
  



}
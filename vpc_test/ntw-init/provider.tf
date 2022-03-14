terraform {
  backend "local"{
  path = "../state/ntw-init.tfstate"
  }
}

provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
  
}
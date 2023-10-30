module "this" {
  source = "../resource-vpc"
  project_name = var.project_name
  

   #VPC
  cidr_block = var.cidr_block
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  #Public subnet 
  public_subnet_cidr = var.public_subnet_cidr

  #private subnet 
  private_subnet_cidr = var.private_subnet_cidr




}
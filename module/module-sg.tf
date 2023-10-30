module "sg" {
  source = "../resource-sg"

  sg_name = var.sg_name
  sg_description = var.sg_description
  sg_ingress_rules = var.sg_ingress_rules

  common_tags = var.common_tags

  project_name = var.project_name

}
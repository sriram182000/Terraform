locals {
  vpc_id = module.this.vpc_id
  public_subnet_ids = module.this.public_subnet_ids
  private_subnet_ids = module.this.private_subnet_ids
  sg_id = module.sg.sg_id
}
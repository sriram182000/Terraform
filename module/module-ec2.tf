module "ec2" {
  for_each = var.instances

  source = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.ami_id
  instance_type = each.value
  vpc_security_group_ids = [local.sg_id]
  subnet_id = each.key == "web" ? local.public_subnet_ids[0] : local.private_subnet_ids[0]

  tags = merge(
    var.common_tags,
    {
        Name = each.key
    }
  )
}
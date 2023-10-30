resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.vpc.id

  dynamic ingress {
    for_each = var.sg_ingress_rules
    content {
         description      = ingress.value.description
        from_port        =  ingress.value.from_port
        to_port          =  ingress.value.to_port
        protocol         =  ingress.value.protocol
        cidr_blocks      =  ingress.value.cidr_block
        
    }
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-security-group"
    }

  )
}
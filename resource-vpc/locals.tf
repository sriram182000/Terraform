locals {
  azs = slice(data.aws_availability_zones.available,0,2)
}
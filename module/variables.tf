variable "cidr_block" {
  default = "10.0.0.0/24"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    terraform = "true"
    Environment = "DEV"
  }
}

variable "vpc_tags" {
    default = {
        Name = "roboshop-vpc"
    }
  }

variable "project_name" {
  default = "roboshop"
}

variable "public_subnet_cidr" {
    type = list
  default = ["10.0.1.0/16","10.0.2.0/16"]
}

variable "private_subnet_cidr" {
  default = ["10.0.11.0/16","10.0.12.0/16"]
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "allowing all ports"
}

variable "sg_ingress_rules" {
  default = [

            {
              from_port = 0
              to_port = 0
              protocol = "tcp"
              description = "all ports"
              cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "instances" {
  default = {
    Web = "t3.large"
    Mongodb = "t3.large"
    Catalogue = "t2.micro"
    Shipping = "t2.micro"
    Dispatch = "t2.micro"
    Redis = "t2.micro"
  }
}

variable "cidr_block" {
  
}

variable "enable_dns_hostnames" {
  default = "true"
}

variable "enable_dns_support" {
  default = "true"
}

variable "common_tags" {
  
}

variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "Please provide 2 public subnet cidr"
  }
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "Please provide 2 private subnet cidr"
  }
  
}


variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_cidr" {
    description = "Subnet CIDRS"
    type = list(string)
}

variable "subnet_names" {
    description = "Subnet names"
    type = list(string)
}

variable "availability_zones" {
  description = "Subnet availability zones"
  type = list(string)
}

variable "ec2_names" {
    description = "EC2 names"
    type = list(string)
}
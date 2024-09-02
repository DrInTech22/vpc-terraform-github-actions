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
  description = "Availability zones"
  type = list(string)
}

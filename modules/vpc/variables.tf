variable "cidr_block" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

variable "tags" {
  type = map(string)
}

variable "public_cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "private_cidr_block" {
  type = string
}

variable "private_availability_zone" {
  type = string
}

variable "public_rt_cidr" {
  type = string
}

variable "private_rt_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "igw_name" {
  type = string
}

variable "nat_eip_name" {
  type = string
}

variable "public_subnet_name" {
  type = string
}

variable "nat_gateway_name" {
  type = string
}

variable "private_subnet_name" {
  type = string
}

variable "public_rt_name" {
  type = string
}

variable "private_rt_name" {
  type = string
}


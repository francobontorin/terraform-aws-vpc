variable "name" {
  default     = "DishVPC"
  type        = string
  description = "Name of the VPC"
}

variable "project" {
  type        = string
  description = "Name of project this VPC is meant to house"
}

variable "environment" {
  type        = string
  description = "Name of environment this VPC is targeting"
}

variable "region" {
  default     = "us-west-2"
  type        = string
  description = "Region of the VPC"
}

variable "key_name" {
  type        = string
  description = "EC2 Key pair name for the bastion"
}

variable "cidr_block" {
  default     = "172.32.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["172.32.201.0/24", "172.32.202.0/24"]
  type        = list
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_names_01" {
  default     = ["sharedaz1-snt1","amfaz1-snt1","amfaz1-snt2", "amfaz1-snt3", "amfaz1-snt4", "amfaz1-snt5", "udmaz1-snt1", "udmaz1-snt2", "udmaz1-snt3", "udmaz1-snt4", "udmaz1-snt5","nrdaz1-snt1","smfaz1-snt1","smfaz1-snt2","upfaz1-snt1","upfaz1-snt2","upfaz1-snt3","upfaz1-snt4","pcfaz1-snt1","pcfaz1-snt2","chfaz1-snt1","chfaz1-snt2","chfaz1-snt3"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks01" {
  default     = ["172.32.1.0/24","172.32.2.0/24", "172.32.3.0/24", "172.32.4.0/24", "172.32.5.0/24", "172.32.6.0/24", "172.32.7.0/24", "172.32.8.0/24", "172.32.9.0/24", "172.32.10.0/24","172.32.11.0/24","172.32.12.0/24","172.32.13.0/24","172.32.14.0/24","172.32.15.0/24","172.32.16.0/24","172.32.17.0/24","172.32.18.0/24","172.32.19.0/24","172.32.20.0/24","172.32.21.0/24","172.32.22.0/24","172.32.23.0/24"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "private_subnet_names_02" {
  default     = ["sharedaz2-snt1","amfaz2-snt1","amfaz2-snt2", "amfaz2-snt3", "amfaz2-snt4", "amfaz2-snt5", "udmaz2-snt1", "udmaz2-snt2", "udmaz2-snt3", "udmaz2-snt4", "udmaz2-snt5","nrdaz2-snt1","smfaz2-snt1","smfaz2-snt2","upfaz2-snt1","upfaz2-snt2","upfaz2-snt3","upfaz2-snt4","pcfaz2-snt1","pcfaz2-snt2","chfaz2-snt1","chfaz2-snt2","chfaz2-snt3"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks02" {
  default     = ["172.32.101.0/24", "172.32.102.0/24","172.32.103.0/24", "172.32.104.0/24", "172.32.105.0/24", "172.32.106.0/24", "172.32.107.0/24", "172.32.108.0/24", "172.32.109.0/24", "172.32.110.0/24","172.32.111.0/24","172.32.112.0/24","172.32.113.0/24","172.32.114.0/24","172.32.115.0/24","172.32.116.0/24","172.32.117.0/24","172.32.118.0/24","172.32.119.0/24","172.32.120.0/24","172.32.121.0/24","172.32.122.0/24","172.32.123.0/24"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["us-east-1a", "us-east-1b"]
  type        = list
  description = "List of availability zones"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}

variable "es_domain_name" {
  description = "Name of the domain"
  type        = string
}

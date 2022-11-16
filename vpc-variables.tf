variable "vpc_name" {
    type = string
    description = "The name of vpc"
    default = "my_vpc"
  
}

variable "CIDR_Block" {
  type = string
  description = "The CIDR block range value"
  default = "172.29.0.0/16"

}

variable "avaliablity" {
    type = list
    description = "The avaliablity zones"
    default = ["ap-south-1a","ap-south-1b"]
  
}

variable "public_subnets" {
    type = list
    description = "The public subnets values"
    default = ["172.29.24.0/24","172.29.25.0/24"]
  
}

variable "private_subnets" {
  type = list
  description = "The private subnets value"
  default = ["172.29.33.0/24","172.29.44.0/24"]
}
variable "enable_natgateway" {
    type = bool
    default = true
    description = "creating a nat gateway"
  
}

variable "single-natgateway" {
    type = bool
    default = true
    description = "creating single nat gateway all private ips will associated to this"
  
}
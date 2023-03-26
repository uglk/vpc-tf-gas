
variable "location" {
  default = "us-east-1"
}
# variable "user" {
#   default = "virginia"
# }
variable "vpc_name" {
  default = "example"
}

variable "pub_sub" {
  default = "pub"
}
variable "pri_sub" {
  default = "pri"
}

variable "cidr" {
  default = "10.1.0.0/16"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}




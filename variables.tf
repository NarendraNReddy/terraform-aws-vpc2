#Project variables 

variable "Project_name" {
  type = string
}

variable "Environment" {
  type=string
}

#VPC

variable "vpc_cidr" {
  type=string

}

variable "enable_dns_hostnames" {
  type=bool
  default = true
}


variable "common_tags" {
  type = map
}

variable "vpc_tags" {
  type = map 
   default = {}
}

#IGW
variable "igw_tags" {
  type = map 
   default = {}
}


#public subnet tags:
variable "public_subnet_tags" {
  type = map 
  default = {}
  
}

variable "public_subnet_cidrs" {
  type=list 

  validation {
    condition = length(var.public_subnet_cidrs) == 2 
    error_message = "Please enter valid public cidrs"
  }
  
}

#private subnet 

variable "private_subnet_tags" {
  type = map 
  default = {}
  
}

variable "private_subnet_cidrs" {
  type=list 

  validation {
    condition = length(var.private_subnet_cidrs) == 2 
    error_message = "Please enter valid public cidrs"
  }
  
}

#database


variable "database_subnet_tags" {
  type = map 
  default = {}
  
}

variable "database_subnet_cidrs" {
  type=list 

  validation {
    condition = length(var.database_subnet_cidrs) == 2 
    error_message = "Please enter valid public cidrs"
  }
  
}

#Nat gateway
variable "nat_gateway_tags" {
  type = map 
  default = {}
}

variable "public_route_table_tags" {
  type=map 
  default = {}
}

variable "private_route_table_tags" {
  type=map 
  default = {}
}

variable "database_route_table_tags" {
  type=map 
  default = {}
}

#PEERING
variable "is_peering_required" {
  type = bool 
  default = false
}

variable "acceptor_vpc_id" {
  type=string 
  default = ""
}

variable "vpc_peering_tags" {
  type=map 
  default = {}
}

variable "database_subnet_group_tags" {
  type=map 
  default = {}
}



variable "ami-id" {
    type = string
    default = "ami-03265a0778a880afb" 
}

variable "instance-type" {

    type = string
    default = "t2.micro"
}

variable "cidr_block" {



}

#optional, but good to give 
variable "tags" {
    
        type = map
        default = {}
        # default = {
        # Name = "Mongodb"
        # Environment = "DEV"
        # Terraform = "true"
        # Project = "Roboshop"
        # Component = "Mongodb"
        # }
}

variable "common_tags" {
    
        type = map
        default = {}
        # default = {
        # Name = "Mongodb"
        # Environment = "DEV"
        # Terraform = "true"
        # Project = "Roboshop"
        # Component = "Mongodb"
        # }
}

variable "instance_names" {

    type = list
    default = ["mongodb", "web", "catalogue", "redis", "user", "cart", "mysql" ,"shipping", "rabbitmq", "payment"]
  
}

variable "route_id" {
    
    default = "Z03394891F4L5GMFM9DG3"
  
}

variable "domain_name" {
  
  type = string
  default = "maheshgolla.online"
}

#optional because we gave the default values
variable "enable_dns_hostnames"{
    default = true
}

variable "enable_dns_support"{
    default = true

}

variable "project_name" {
  
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "please provide two public subnets CIDR"
  }
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please provide two private subnets CIDR"
  }
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "please provide two database subnets CIDR"
  }
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "db_subnet_group_tags" {
  default = {}
}
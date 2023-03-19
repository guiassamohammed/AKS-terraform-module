variable "resource_group_name" {
    type = string
    description = "The RG name"
    default     = ""
}


variable "subnet_name" {
    type = string
    description = "The route table subnet name"
    default     = ""
}

variable "location" {
    type = string
    description = "location name"
    default     = ""
}


variable "address_prefix" {
    type = list(string)
    description = "location name"
    
}

variable "VN_name" {
    type = string
    description = "location name"
    default     = ""
}



variable "rt_name" {
    type = string
    description = "The route table accuont base name"
    default     = ""
}



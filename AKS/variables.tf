

variable "AKS_name" {
  type = string
  description = "The name of the AKS"
}



variable "location" {
  type = string
  description = "The name of the existing vnet"
  default     = ""
}


variable "resource_group_name" {
  type = string
  description = "The name of the existing subnet"
  default     = ""
}

variable "vnet_subnet_id" {
  type = string
  description = "The name of the existing vnet"
  default     = ""
}

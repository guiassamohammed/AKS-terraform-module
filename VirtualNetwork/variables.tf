# Subnet Vars
variable "name" {
  type = string
  description = "The name of the existing subnet"
  default     = ""
}

variable "location" {
  type = string
  description = "The name of the existing vnet"
  default     = ""
}

# Subnet Vars
variable "resource" {
  type = string
  description = "The name of the existing subnet"
  default     = ""
}

variable "address_space" {
  type = list(string)
  description = "The name of the existing vnet"
  
}

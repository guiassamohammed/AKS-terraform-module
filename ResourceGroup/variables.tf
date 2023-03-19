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
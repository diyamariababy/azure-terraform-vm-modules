variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "rg_name" {
  type        = string
  description = "Resource Group name"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network name"
}

variable "subnet_prefix" {
  type        = list(string)
  description = "Subnet CIDR block"
}

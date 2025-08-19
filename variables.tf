variable "location"              { type = string }
variable "rg_name"               { type = string }

variable "vnet_name"             { type = string }
variable "address_space"         { type = list(string) }

variable "subnet_name" {type = string}

variable "subnet_prefix" {type = list(string)}






variable "nsg_name"              { type = string }
variable "security_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "pip_name"              { type = string }
variable "nic_name"              { type = string }

variable "vm_name"               { type = string }
variable "vm_size"               { type = string }
variable "admin_username"        { type = string }
variable "admin_password" {
  type      = string
  sensitive = true
}

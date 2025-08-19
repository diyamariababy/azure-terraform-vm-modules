location  = "Canada Central"
rg_name   = "myRG"

vnet_name     = "myvnet"
address_space = ["10.0.0.0/16"]

subnet_name   = "mysubnet"
subnet_prefix = ["10.0.1.0/24"]  


nsg_name = "mynsg"
security_rules = [
  {
    name                       = "AllowSSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "AllowHTTP"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
]

pip_name = "mypip"
nic_name = "mynic"

vm_name        = "myvm"
vm_size        = "Standard_B1s"
admin_username = "<your username>"
admin_password = "<your password>"

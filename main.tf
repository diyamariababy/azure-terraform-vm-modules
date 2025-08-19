module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "vnet" {
  source   = "./modules/vnet"
  vnet_name = var.vnet_name
  rg_name   = module.resource_group.rg_name   
  address_space = var.address_space
  location  = var.location
}

module "subnet" {
  source        = "./modules/subnet"
  subnet_name   = var.subnet_name
  rg_name       = module.resource_group.rg_name
  vnet_name     = module.vnet.vnet_name
  subnet_prefix = var.subnet_prefix
}


module "nsg" {
  source   = "./modules/nsg"
  nsg_name = var.nsg_name
  rg_name  = module.resource_group.rg_name
  location = var.location
  security_rules = var.security_rules
}

module "nsg_association" {
  source = "./modules/nsg_association"
  subnet_id = module.subnet.subnet_id
  nsg_id    = module.nsg.id
}

module "pip" {
  source   = "./modules/pip"
  pip_name = var.pip_name
  rg_name  = module.resource_group.rg_name
  location = var.location
}

module "nic" {
  source   = "./modules/nic"
  nic_name = var.nic_name
  rg_name  = module.resource_group.rg_name
  location = var.location
  subnet_id = module.subnet.subnet_id
  pip_id    = module.pip.pip_id
}

module "vm" {
  source   = "./modules/vm"
  vm_name  = var.vm_name
  rg_name  = module.resource_group.rg_name
  location = var.location
  nic_id   = module.nic.nic_id
  admin_username = var.admin_username
  admin_password = var.admin_password
}

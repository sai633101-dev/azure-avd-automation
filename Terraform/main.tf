module "rg" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source      = "./modules/network"
  vnet_name   = var.vnet_name
  subnet_name = var.subnet_name
  rg_name     = module.rg.name
}

module "hostpool" {
  source  = "./modules/hostpool"
  name    = var.hostpool_name
  rg_name = module.rg.name
}

module "workspace" {
  source  = "./modules/workspace"
  name    = var.workspace_name
  rg_name = module.rg.name
}

module "appgroup" {
  source  = "./modules/application_group"
  name    = var.application_group_name
  rg_name = module.rg.name
}

module "vm" {
  source    = "./modules/vm"
  size      = var.vm_size
  rg_name   = module.rg.name
  subnet_id = module.network.subnet_id
}

module "storage" {
  source  = "./modules/storage"
  name    = var.storage_account_name
  rg_name = module.rg.name
}

module "keyvault" {
  source  = "./modules/keyvault"
  name    = var.keyvault_name
  rg_name = module.rg.name
}

module "loganalytics" {
  source  = "./modules/loganalytics"
  name    = var.log_analytics_name
  rg_name = module.rg.name
}

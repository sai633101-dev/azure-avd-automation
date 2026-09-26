output "resource_group_name" {
  value = module.rg.name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "hostpool_id" {
  value = module.hostpool.id
}

output "workspace_id" {
  value = module.workspace.id
}

output "application_group_id" {
  value = module.appgroup.id
}

output "vm_ids" {
  value = module.vm.ids
}

output "storage_account_id" {
  value = module.storage.id
}

output "keyvault_id" {
  value = module.keyvault.id
}

output "log_analytics_id" {
  value = module.loganalytics.id
}

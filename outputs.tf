output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "vnet_id" {
  value = module.hub_network.vnet_id
}

output "nsg_id" {
  value = module.nsg.nsg_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "keyvault_id" {
  value = module.keyvault.keyvault_id
}

output "bastion_host_ip" {
  value = module.bastion.bastion_host_ip
}

output "load_balancer_ip" {
  value = module.loadbalancer.load_balancer_ip
}

output "windows_vm_id" {
  value = module.windows_vm.vm_id
}

output "firewall_id" {
  value = module.firewall.firewall_id
}

output "nat_gateway_id" {
  value = module.natgateway.nat_gateway_id
}

output "private_endpoint_id" {
  value = module.private_endpoint.private_endpoint_id
}

output "private_dns_zone_id" {
  value = module.private_dns.private_dns_zone_id
}

output "monitoring_id" {
  value = module.monitoring.monitoring_id
}

output "diagnostics_settings_id" {
  value = module.diagnostics.diagnostics_settings_id
}

output "backup_id" {
  value = module.backup.backup_id
}

output "managed_identity_id" {
  value = module.managed_identity.managed_identity_id
}

output "route_table_id" {
  value = module.route_table.route_table_id
}

output "policy_id" {
  value = module.policy.policy_id
}
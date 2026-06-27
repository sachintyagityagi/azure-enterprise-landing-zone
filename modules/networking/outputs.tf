output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_ids" {
  value = azurerm_subnet.main.*.id
}

output "nsg_id" {
  value = azurerm_network_security_group.main.id
}

output "route_table_id" {
  value = azurerm_route_table.main.id
}

output "public_ip_id" {
  value = azurerm_public_ip.main.id
}

output "firewall_id" {
  value = azurerm_firewall.main.id
}

output "nat_gateway_id" {
  value = azurerm_nat_gateway.main.id
}

output "bastion_host_id" {
  value = azurerm_bastion_host.main.id
}

output "load_balancer_id" {
  value = azurerm_lb.main.id
}
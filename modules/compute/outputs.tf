output "compute_instance_id" {
  value = azurerm_virtual_machine.example.id
}

output "compute_instance_public_ip" {
  value = azurerm_public_ip.example.ip_address
}

output "compute_instance_private_ip" {
  value = azurerm_network_interface.example.private_ip_address
}
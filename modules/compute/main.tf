resource "azurerm_resource_group" "compute_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "compute_vnet" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = azurerm_resource_group.compute_rg.location
  resource_group_name = azurerm_resource_group.compute_rg.name
}

resource "azurerm_subnet" "compute_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.compute_rg.name
  virtual_network_name = azurerm_virtual_network.compute_vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_network_interface" "compute_nic" {
  name                = var.network_interface_name
  location            = azurerm_resource_group.compute_rg.location
  resource_group_name = azurerm_resource_group.compute_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.compute_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "compute_vm" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.compute_rg.name
  location            = azurerm_resource_group.compute_rg.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.compute_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    create_option        = "FromImage"
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = "latest"
  }
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.compute_vm.id
}
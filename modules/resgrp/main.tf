resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "${var.location}"
  resource_group_name = "${var.rgName}"
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  ="${var.rgName}"
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefix     = "10.0.1.0/24"

}


resource "azurerm_network_interface" "vmNic" {
  count               = length(var.network_interfaces)
  name                = var.network_interfaces[count.index].name
  resource_group_name = var.rgName
  location            = var.location

  ip_configuration {
    name                          = var.network_interfaces[count.index].name
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Static"
    private_ip_address            = var.network_interfaces[count.index].private_ip
  }  
}

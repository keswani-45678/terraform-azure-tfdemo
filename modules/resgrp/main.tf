variable "subscriptionid"{
  type = string
  default = "c961a351-ec79-490c-89d5-b31ef157ec0a"
}


resource "azurerm_network_interface" "vmNic" {
  count               = length(var.network_interfaces)
  name                = var.network_interfaces[count.index].name
  resource_group_name = var.network_interfaces[count.index].rgName
  location            = var.network_interfaces[count.index].location

  ip_configuration {
    name                          = var.network_interfaces[count.index].name
    subnet_id            = "/subscriptions/${var.subscriptionid}/resourceGroups/${var.network_interfaces[count.index].rgName}/providers/Microsoft.Network/virtualNetworks/${var.network_interfaces[count.index].vnetname}/subnets/${var.network_interfaces[count.index].subnetName}"
    private_ip_address_allocation = "Static"
    private_ip_address            = var.network_interfaces[count.index].private_ip
  }  
}

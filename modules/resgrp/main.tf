

resource "azurerm_resource_group" "resource_group" {
  name     = "test1"
  location = "eastus"
  
  tags = {
    Name = "MyVPC"
  }
}

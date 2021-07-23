
variable "location" {
  description = "The Azure Region in which all resources groups should be created."
  default= "eastus"
}

variable "rg-name" {
    description = "The name of the resource group"
    default= "test2"
}
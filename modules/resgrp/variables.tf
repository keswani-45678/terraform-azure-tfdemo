variable "rgName" {
  type        = string
  description = "Specify a resource group name"
  default = "test1"
}

variable "location" {
  type        = string
  description = "Location for the VM"
  default = "east us"
}

variable "vnet_address_space" {
  default = "10.0.0.0/16"
}

variable "subnet_prefix" {
    default = [
        "10.0.1.0/24",
        "10.0.2.0/24",
    ]
}

variable "vnet_names" {
  description = "Create Vnets with these names"
  type        = list(string)
  default     = ["vnet1", "vnet2"]
}

variable "subnet_names" {
  description = "Create subnets with these names"
  type        = list(string)
  default     = ["subnet1", "subnet2"]
}


variable "network_interfaces" {
    default = [
        {
            name = "test1",
        
            private_ip = "10.0.1.4"
        },
        {
            name = "test2",
         
            private_ip = "10.0.1.8"
        }
    ]
}

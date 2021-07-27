
variable "network_interfaces" {
    default = [
        {
            name = "testnic1",
            rgName = "test1",
            location = "east us",
            private_ip = "10.0.1.4",
            vnetname   = "example-vnet",
            subnetName = "example-subnet"
        },
        {
            name = "testnic2",
            rgName = "test1",
            location = "east us",
            private_ip = "10.0.1.8",
            vnetname   = "example-vnet",
            subnetName = "example-subnet"
        }
    ]
}

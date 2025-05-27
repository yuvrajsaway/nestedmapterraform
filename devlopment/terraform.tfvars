resourcegroup = {
  rg1 = {
    name     = "rgroup001"
    location = "West Us"
  }
}

virtualnetwork = {
  vnet01 = {
    vnetname            = "appvnet001"
    location            = "West Us"
    resource_group_name = "rgroup001"

  }
}

virtualsubnet = {
  subnet01 = {
    subnetname          = "frontendsubnet"
    resource_group_name = "rgroup001"
    vnetname            = "appvnet001"
    address_prefixes    = ["10.0.1.0/24"]

  }

  subnet02 = {
    subnetname          = "backendsubnet"
    resource_group_name = "rgroup001"
    vnetname            = "appvnet001"
    address_prefixes    = ["10.0.2.0/24"]

  }

}

networknic ={
  nic01 = {
    name = "networknic01"
    location = "West Us"
    resource_group_name = "rgroup001"
    subnet_id = "backendsubnet"
    private_ip_address_allocation = "Dynamic"
  }
}



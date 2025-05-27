module "resource_group" {
  source    = "../modules/resource_group"
  for_each  = var.resourcegroup
  rgname    = each.value.name
  rgloation = each.value.location

}

module "virtualnetwork" {
  depends_on = [module.resource_group]
  source     = "../modules/vnet"
  for_each   = var.virtualnetwork
  vnetname   = each.value.vnetname
  rgloation  = each.value.location
  rgname     = each.value.resource_group_name

}

module "virtualsubnet" {
  depends_on       = [module.virtualnetwork]
  source           = "../modules/subnet"
  for_each         = var.virtualsubnet
  subnet_name      = each.value.subnetname
  rgname           = each.value.resource_group_name
  vnetname         = each.value.vnetname
  address_prefixes = each.value.address_prefixes
}

module "networknic" {
  depends_on                    = [module.virtualsubnet]
  source                        = "../modules/networknic"
  for_each                      = var.networknic
  nicname                       = each.value.name
  rgloation                     = each.value.location
  rgname                        = each.value.resource_group_name
  private_ip_address_allocation = each.value.private_ip_address_allocation

}

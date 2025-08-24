module "rg" {
  source   = "../child_module_azurerm/resource_group"
  rgname  = "resource"
  location = "central india"
}

module "stgacct" {
  depends_on = [module.rg]
  source     = "../child_module_azurerm/storage_account"
  stgname   = "storage"
  location   = "central india"
  rgname    = module.rg.rename
}

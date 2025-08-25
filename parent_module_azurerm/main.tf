module "rg" {
  source   = "../child_module_azurerm/resource_group"
  rgname  = "r2r"
  location = "central india"
}

module "stgacct" {
  depends_on = [module.rg]
  source     = "../child_module_azurerm/storage_account"
  stgname   = "coca"
  location   = "central india"
  rgname    = module.rg.rename
}

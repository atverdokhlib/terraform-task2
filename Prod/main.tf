data "azurerm_key_vault_secret" "vm-password" {
name = "vm-password"
vault_uri = "https://dev-pro.vault.azure.net/"
}
module "web-pool" {
  source = "github.com/atverdokhlib/web-vm-v0.0.1.git"

  env = "${var.env}"
  region = "${var.region}"
  prefix = "${var.prefix}"
  vms_count = "${var.vms_count}"
  dnsforpubip = "${var.dnsforpubip}"
  username = "${var.username}"
  password = "${data.azurerm_key_vault_secret.vm-password.value}"
  vnet = "${var.vnet}"
  vsubnet = "${var.vsubnet}"
  #depends_on = ["azurerm_virtual_machine_extension.test"]
}
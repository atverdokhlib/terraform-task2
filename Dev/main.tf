data "azurerm_key_vault_secret" "vm-password" {
name = "vm-password"
vault_uri = "https://dev-pro.vault.azure.net/"
}
module "web-pool" {
  source = "github.com/atverdokhlib/web-vm-v0.0.1.git"
  //source = "../modules/web-vm-v0.0.1"

  env = "${var.env}"
  region = "${var.region}"
  prefix = "${var.prefix}"
  vms_count = "${var.vms_count}"
  dnsforpubip = "${var.dnsforpubip}"
  username = "${var.username}"
  password = "${data.azurerm_key_vault_secret.vm-password.value}"
  #depends_on = ["azurerm_virtual_machine_extension.test"]
}
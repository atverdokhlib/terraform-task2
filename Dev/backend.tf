data "azurerm_key_vault_secret" "devprostaccount" {
name = "devprostaccount"
vault_uri = "https://dev-pro.vault.azure.net/"
}
terraform  {
  backend "azurerm" {
  container_name = "dev"
  storage_account_name = "devprostaccount" 
  key = "terraform.tfstate"

  access_key = ""
   
  }

}
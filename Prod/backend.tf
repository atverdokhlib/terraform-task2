terraform  {
  backend "azurerm" {
  container_name = "dev"
  storage_account_name = "devprostaccount" 
  key = "terraform.tfstate"
  access_key = ""
  }

}
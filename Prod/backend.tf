terraform  {
  backend "azurerm" {
  container_name = "prod"
  storage_account_name = "devprostaccount" 
  key = "terraform.tfstate"
  access_key = ""
  }

}
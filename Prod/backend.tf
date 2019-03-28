terraform  {
  backend "azurerm" {
  container_name = "prod"
  storage_account_name = "devprostaccount" 
  key = "terraform.tfstate"
  access_key = "ZKsw/xKHBUWA7SykQfewYjjAEAQ/pzh4SXJHnRUESANb7vEm96AOUqs/13gFZ5DS2B4i97PWgNw/xrLpMqdBlg=="
  }

}
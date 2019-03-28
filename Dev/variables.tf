# Define the common tags for all resources
locals {
  common_tags = {
    Environment = "dev"
    orchestrator = "terraform"
  }
}

variable "env"{
 description = "Environment"
 default = "dev"

}
variable "region" {
  description = "Location of resources"
  default = "North Europe"

}

variable "prefix" {
  description = "Resources naming prefix"
  default = "atv"
}

variable "vms_count" {
  description = "How much VMs are needed"
  default = 2
}

variable "dnsforpubip" {
  description = "Which cloud region should be used"
  default = "atv-dev-terra"
}

variable subscription_id {
  description = "Subscription id for azure connection"
}
variable tenant_id {
  description = "Tenant id for azure connection"
}

variable "username" {
  description = "Username for ssh description"
}

variable "vnet" {
  description = "Virtual network"
  default = "10.0.0.0/16"
}
variable "vsubnet" {
  description = "Lan subnet"
  default = "10.0.1.0/24"
}

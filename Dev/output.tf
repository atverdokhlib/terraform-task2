
//output "name" {
//  value = "${module.web-pool.public_ip_address_vm}"
//}

output "LoadBalancer connection data" {
  value = [
    //"LoadBalancer URL: http://${join(" ", azurerm_public_ip.lbpip.)}",
    "LoadBalancer IP: http://${module.web-pool.public_ip_address_lb}"
  ]
}

output "ssh-to-vms" {

 value ="${module.web-pool.vms_ssh_port}"


}


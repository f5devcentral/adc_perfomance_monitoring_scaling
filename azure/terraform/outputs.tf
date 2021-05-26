output "a_bigip_management_address" {
  value = "https://${module.bigip.0.mgmtPublicIP}:8443"
}

output "b_application_address" {
  description = "Public endpoint for load balancing external app"
  value       = "https://${azurerm_public_ip.nlb_public_ip.ip_address}"
}

output "c_consul_public_address" {
   value = "http://${azurerm_public_ip.consul_public_ip.ip_address}:8500"
 }

output "d_AlertForwarder_public_address" {
   value = "http://${azurerm_public_ip.af_public_ip.ip_address}:8000"
}

output app_id {
   value = local.app_id
}


output "bastion_dns_name" {
  value       = azurerm_bastion_host.bastion_host.dns_name
  description = "The DNS name of the Azure Bastion"
}

output "bastion_hostname" {
  value       = azurerm_bastion_host.bastion_host.name
  description = "The host name of the bastion"
}

output "bastion_ip_configuration" {
  value       = azurerm_bastion_host.bastion_host.ip_configuration
  description = "The bastion host ip_configuration block"
}

output "bastion_nsg_id" {
  value       = var.create_bastion_nsg == true ? azurerm_network_security_group.bastion_nsg.id : null
  description = "The host name of the bastion"
}

output "bastion_nsg_name" {
  value       = var.create_bastion_nsg == true ? azurerm_network_security_group.bastion_nsg.name : null
  description = "The name of the bastion nsg"
}

output "bastion_subnet_id" {
  value       = azurerm_bastion_host.bastion_host.ip_configuration[0].subnet_id
  description = "The subnet ID associated with the bastion host's IP configuration"
}

output "bastion_subnet_ip_range" {
  value       = azurerm_subnet.bastion_subnet.address_prefixes
  description = "Bastion subnet IP range"
}

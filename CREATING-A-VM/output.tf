output "vm-public-ip" {
  value       = azurerm_public_ip.public-ip.ip_address
  description = "The public IP address of the Virtual Machine"
}

output "vm-creation-message" {
  value       = "The Virtual Machine ${azurerm_virtual_machine.myvm.name} has been created successfully"
  description = "Virtual Machine Creation Message"
}

output "public_key" {
  value       = tls_private_key.ssh.public_key_openssh
  description = "Public Key of the SSH Key Pair"
  sensitive   = true
}

output "private_key" {
  value       = tls_private_key.ssh.private_key_pem
  description = "Private Key of the SSH Key Pair"
  sensitive   = true
}
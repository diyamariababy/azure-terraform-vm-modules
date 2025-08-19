output "public_ip_address" {
  value       = module.pip.ip_address
  description = "Public IP of the VM"
}

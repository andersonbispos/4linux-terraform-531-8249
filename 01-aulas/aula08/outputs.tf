//exemplos de output com count+list
output "vm_names" {
  description = "Hostname das vms webs"
  value       = google_compute_instance.vm[*].name
}

output "vm_ips" {
  description = "IPs das vms webs"
  value       = google_compute_instance.vm[*].network_interface.0.access_config.0.nat_ip
}

//exemplos de outputs com 'for_each + map'
output "web_names" {
  value = values(google_compute_instance.web-modelo)[*].name
}

output "web_access_ip" {
  value = values(google_compute_instance.web-modelo)[*].network_interface.0.access_config.0.nat_ip
}

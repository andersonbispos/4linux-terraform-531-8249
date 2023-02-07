/* output "db_server_selflink" {
  description = "Self link do db_server"
  value       = google_compute_instance.db.self_link
} */

output "db_server_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
}

output "web1_server_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web1.network_interface.0.access_config.0.nat_ip
}

/* output "web2_internal_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web2.network_interface.0.network_ip
} */

output "web2_external_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web2.network_interface.0.access_config.0.nat_ip
}

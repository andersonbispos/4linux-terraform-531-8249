output "vpc_selflink" {
    description = "parametro usado para linkar um recurso a vpc do modulo"
    value = google_compute_network.vpc_network.self_link
}

output "subnet_selflink" {
    description = "parametro usado para linkar uma instancia a subnet do modulo"
    value = google_compute_subnetwork.subnet1.self_link  
}
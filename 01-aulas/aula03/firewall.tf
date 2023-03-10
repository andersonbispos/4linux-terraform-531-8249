/* exemplo de comentario de bloco */
/* resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
} */

resource "google_compute_firewall" "allow-icmp-ssh" {
  name    = "allow-icmp-ssh"
  network = "vpc-network"

  allow {
    protocol = "icmp"
  }

  // exemplo de comentario
  # de linha

  #allow {
  #  protocol = "tcp"
  //  ports    = ["22", "80"]
  //}

  source_ranges = ["0.0.0.0/0"]
}
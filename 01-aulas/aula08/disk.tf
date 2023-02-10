//disco com parametros vindo de uma tupla
/* resource "google_compute_disk" "default" {
  name = var.tuple_disk[0]
  type = var.tuple_disk[1]
  zone = var.tuple_disk[2]
  size = var.tuple_disk[3]
} */

//disco com parametros vindo de um object
resource "google_compute_disk" "default" {
  name = var.disk_object["diskName"]
  type = var.disk_object["diskType"]
  zone = var.disk_object["diskZone"]
  size = var.disk_object["diskSize"]
}
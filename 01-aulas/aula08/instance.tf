resource "google_compute_instance" "vm" {

  //count = var.qtd_instances
  count = length(var.vm_zones)

  //name = format("%s-%s-%s", var.vm_prefix, count.index+1, var.vpc_name)
  name = format("%s-%s-%s", var.vm_prefix, count.index, var.vpc_name)

  machine_type = var.default_vm_size
  zone         = var.vm_zones[count.index]

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    network = data.google_compute_network.my-network.self_link

    access_config {}
  }

  allow_stopping_for_update = true
}
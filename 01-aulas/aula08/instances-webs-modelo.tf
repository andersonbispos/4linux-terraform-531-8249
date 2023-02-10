resource "google_compute_instance" "web-modelo" {

  //loop pra criacao de recursos com count+list
  // count = length(var.webzones_br)
  // name = var.webnames_br[count.index]
  // zone = var.webzones_br[count.index]

  // exemplo de map acessando os valores atraves da chave
  //name = var.vm1_defs["vm_name"]
  //zone = var.vm1_defs["vm_zone"]

  for_each = var.vm_defs_nome_zona

  name = each.key
  zone = each.value

  machine_type = var.default_vm_size

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    network = data.google_compute_network.my-network.self_link
    access_config {

    }
  }

  allow_stopping_for_update = true
}
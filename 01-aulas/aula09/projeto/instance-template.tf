resource "google_compute_instance_template" "default" {
  name        = "appserver-template"
  description = "This template is used to create app server instances."

  tags = ["webapp"]

  instance_description = "Instancia criada via template"
  machine_type         = var.default_vm_size

  // Create a new boot disk from an image
  disk {
    source_image = var.default_vm_image
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link

    access_config {

    }
  }

  metadata_startup_script = file(var.prov_script)

}
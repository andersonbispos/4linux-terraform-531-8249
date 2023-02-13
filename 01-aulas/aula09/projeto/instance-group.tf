resource "google_compute_region_instance_group_manager" "appserver-us-central" {
  name = "appserver-us-central"

  base_instance_name = "appserver-us-central"
  region             = "us-central1"

  version {
    instance_template = google_compute_instance_template.default.id
  }

  target_size = 0
}

resource "google_compute_region_instance_group_manager" "appserver-br" {
  name = "appserver-br"

  base_instance_name = "appserver-br"
  region             = "southamerica-east1"

  version {
    instance_template = google_compute_instance_template.default.id
  }

  target_size = 0
}
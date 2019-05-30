data "google_compute_image" "my_image" {
  family  = "debian-9"
  project = "debian-cloud"
}

resource "google_compute_instance" "firstserver" {
    name = "thefirstserver"
    machine_type = "n1-standard-1"
    zone = "us-east4-a"

    boot_disk{
        initialize_params {
            image = "${data.google_compute_image.my_image.self_link}"
        }
    }
    network_interface {
        subnetwork = "${google_compute_subnetwork.dev-subnet1.name}"

        access_config {
        }
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }
}


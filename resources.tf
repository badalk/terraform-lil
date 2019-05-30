resource "google_compute_network" "our_development_network1" {
    name = "devnetwork1"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "dev-subnet1" {
    ip_cidr_range = "10.0.1.0/24"
    name = "devsubnet1"
    network = "${google_compute_network.our_development_network1.self_link}"
    region = "us-east4"
}
# resource "google_compute_instance" "myinstance" {
    
# }
provider "google" {
    credentials = "${file("../account.json")}"
    project = "my-gcp-new-project"
    region = "us-east4"
}